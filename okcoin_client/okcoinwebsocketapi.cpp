#include <trade.h>
#include "okcoinwebsocketapi.h"
#include "parameter.h"
#include <zlib.h>
#include "util/email_client.h"
#include "util/singleton.h"

using namespace std;

OKCoinWebSocketApi::OKCoinWebSocketApi():
pWebsocket(0),
m_callbak_open(0),
m_callbak_close(0),
m_callbak_message(0)
{
	;
};

OKCoinWebSocketApi::~OKCoinWebSocketApi()
{
	Close();
};

void OKCoinWebSocketApi::SetKey(string api_key,string secret_key)
{	
	m_api_key		=	api_key;
	m_secret_key	=	secret_key;	
}

void OKCoinWebSocketApi::SetUri(string uri)
{
	m_uri = uri;
}
void OKCoinWebSocketApi::Close()
{
	if(pWebsocket != 0)
	{
		pWebsocket->doclose();
		hThread.join();
    }
}

void OKCoinWebSocketApi::Emit(const char *channel,string &parameter)
{
	if(pWebsocket != 0)
	{
		pWebsocket->emit(channel,parameter);
	}
};
void OKCoinWebSocketApi::Emit(const char *channel)
{
	if(pWebsocket != 0)
	{
		pWebsocket->emit(channel);
	}
};
void OKCoinWebSocketApi::Emit(string &channel)
{
	if(pWebsocket != 0)
	{
		pWebsocket->emit(channel);
	}
};

void OKCoinWebSocketApi::Remove(string channel)
{
	if(pWebsocket != 0)
	{
		pWebsocket->remove(channel);
	}
};

unsigned OKCoinWebSocketApi::RunThread( void* arg )
{
	if(arg != 0)
	{
		OKCoinWebSocketApi *api = (OKCoinWebSocketApi *)arg;
        for (;;) {
            long count = 0;
            for (int i = 0; i < retry_count; i++) {
                if (api->pWebsocket != 0) {
                    api->pWebsocket->doclose();
                }

                if (api->pWebsocket == 0) {
                    api->pWebsocket = new WebSocket();
					Singleton<Trade>::instance().set_websocket(api->pWebsocket);
                }

                if (api->pWebsocket != 0) {
                    api->pWebsocket->callbak_open = api->m_callbak_open;
                    api->pWebsocket->callbak_close = api->m_callbak_close;
                    api->pWebsocket->callbak_message = api->m_callbak_message;
                    api->pWebsocket->run(api->m_uri);
                    bool bManualClose = api->pWebsocket->m_manual_close;
                    delete api->pWebsocket;
                    api->pWebsocket = 0;
                    if (!bManualClose)//是否为主动关闭连接，如果不是用户主动关闭，当接到断开联接回调时则自动执行重新连接机制。
                    {
						OKBOT_LOG_FATAL("server closed connection, restart okbot.. with retry count {}", ++count);
                    } else {
                        return 0;
                    }
                } else {
                    return 0;
                }
            }
        }
	}
	//::SetEvent(Global::g_hExit);

	return 0;
}

void OKCoinWebSocketApi::Run()
{
    hThread = std::thread(OKCoinWebSocketApi::RunThread, this);
}

void OKCoinWebSocketApi::SetCallBackOpen(websocketpp_callbak_open callbak_open)
{
	m_callbak_open = callbak_open;
}

void OKCoinWebSocketApi::SetCallBackClose(websocketpp_callbak_close callbak_close)
{
	m_callbak_close = callbak_close;
}

void OKCoinWebSocketApi::SetCallBackMessage(websocketpp_callbak_message callbak_message)
{
	m_callbak_message = callbak_message;
}

//////////////////////////////////////////////////////////////////////////////////////////////

//获取OKCoin现货行情数据
void OKCoinWebSocketApiCn::ok_spot_btc_ticker() //比特币行情数据
{
	Emit("ok_sub_spot_btcusdt_ticker");
}
void OKCoinWebSocketApiCn::ok_spot_btc_depth_20() //比特币20条市场深度
{
	Emit("ok_sub_spot_btcusdt_depth_20");
}
void OKCoinWebSocketApiCn::ok_spot_btc_trades() //比特币实时成交记录
{
	Emit("ok_sub_spot_btcusdt_trades");
}
void OKCoinWebSocketApiCn::ok_spot_btc_kline_1min() //比特币K线数据
{
	Emit("ok_sub_spot_btcusdt_kline_1min");
}

void OKCoinWebSocketApiCn::ok_spot_btc_kline_5min() //比特币K线数据
{
    Emit("ok_sub_spot_btc_kline_5min");
}

//用OKCoin进行现货交易
void OKCoinWebSocketApiCn::ok_spot_trades() //订阅交易数据
{
	Parameter prmt;
	prmt.AddParam("api_key",m_api_key);
	string sign = prmt.GetSign(m_secret_key);
	prmt.AddParam("sign",sign);
	string prmtstr = prmt.ToJsonString();
	Emit("ok_sub_spot_btcusdt_trades",prmtstr);
	return ;
}

void OKCoinWebSocketApiCn::ok_spot_trade(string &symbol,string &type,string &price,string &amount) //下单交易
{
	Parameter prmt;
	prmt.AddParam("api_key",m_api_key);
	prmt.AddParam("symbol",symbol);
	prmt.AddParam("type",type);
	prmt.AddParam("price",price);
	prmt.AddParam("amount",amount);

	string sign = prmt.GetSign(m_secret_key);
	prmt.AddParam("sign",sign);
	string prmtstr = prmt.ToJsonString();
	Emit("ok_spot_trade",prmtstr);
	return ;
}
void OKCoinWebSocketApiCn::ok_spot_cancel_order(string &symbol,string &order_id) //取消订单
{
	Parameter prmt;
	prmt.AddParam("api_key",m_api_key);
	prmt.AddParam("symbol",symbol);
	prmt.AddParam("order_id",order_id);
	string sign = prmt.GetSign(m_secret_key);
	prmt.AddParam("sign",sign);
	string prmtstr = prmt.ToJsonString();
	Emit("ok_spot_cancel_order",prmtstr);
}

//取消订阅
void OKCoinWebSocketApiCn::remove_ok_spot_btc_ticker() //比特币行情数据
{
	Remove("ok_sub_spot_btcusdt_ticker");
}

//////////////////////////////////////////////////////////////////////////////////

//获取OKCoin现货行情数据
void OKCoinWebSocketApiCom::ok_spotusd_btc_ticker() //比特币行情数据
{
	Emit("ok_sub_spot_btcusdt_ticker");
}

//获取OKCoin合约行情数据
void OKCoinWebSocketApiCom::ok_futureusd_btc_ticker_this_week() //比特币当周合约行情
{
	Emit("ok_sub_futureusd_btc_ticker_this_week");
}

void OKCoinWebSocketApiCom::ok_futureusd_btc_index() //比特币合约指数
{
	Emit("ok_sub_futureusd_btc_index");
}

//取消订阅
void OKCoinWebSocketApiCom::remove_ok_spotusd_btc_ticker() //比特币行情数据
{
	Remove("ok_sub_spotusd_btc_ticker");
}
