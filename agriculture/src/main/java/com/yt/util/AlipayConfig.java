package com.yt.util;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091100487755";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCCnkyFiyiGkzisCHbwkxkiWuPGOA8CcjHbSGTF2sMWnlwCpwYmsOO4U7wZOb7xHi++Sn/b5MqIhASmRq8JwcqBTvmWN10Oyg/R0JJnWeYyqgjsKevZz9MMyvq2dKUt/mPjuhlMKUiIsiXW9/va9EwN77vCKeVYi97Eq64dVxD9RyjKpngA0NUKwgFmZKP6RWLYiirNk9vauLm4zEcu4grWdjZ+H24+mQcYiiVCKn6HGln9FJga7x4r41PwayXbi04mZQlnqMt4ZO7Y4rkfyx0wTaOYfvB5wlFNENjIjHiL95dw2pmFOzuUH4MahLE3tqbW28dmmRS8gvK0/2NFHxiXAgMBAAECggEALCt/0QEX+To7xeEu53e23ilCMTuvx7H6Lh8zBL1Pj4yJrNPyfo7+0sxuJVGjwkHk/0KOLjwWSUfrkpcAhhokcsnUGPor2950rw0LFSwPbj6VudcLTKK8yeyyD5UubnlCKjY6a8jiIGet6B3/6zEFrwjMw4ILboAOGw+7V2yj8CHs6VjouF0ugsl8K7/DHLYj+uHv9uoRusxexgH7JltDAKfdDURbdWkj2eSqoh011vM1dAJASdYUy7HHQ5EBAPaoHpQkaAK0K5Z8wFM5v+tnvlYCiKAdqGEwMJOtN/jcLqfn7Fg5xcrapMSnWv5z8deQE40OX03aTCMBuVH3EXTJsQKBgQDWYxrnetkzC0Z68m1lTBdENBxgs7IgsZ3z1TvU2XDSIWzGe5Nu4TxccekYpOFK3WOd90qiZ/Z7875WW0VoUC3azi/IjStiitorZX+0YRDnyqvoFSO4PKtCWZo7WbwBRm9v5MdivzwyYj6kw+DzqUXQY0alYa1pWXUuy1aP/SrALQKBgQCb+LlaZvzj3SbvfH3OvicWqPslAAGmxierUQnuC1jytQzKcY/NEq/7rtMVXHwkwol4x6teVG5bdWfuS9b6HqvTQJgZF5VdfR3+E2VOCU/2rSkIzp37ooAxGXIQ7UbvLgMrT1wUBuJcTJ3BBnnMYodFclhT5MJX8MAG0GlzS+IyUwKBgAL6EU+Rhx6MU4g1gYtciR4rUxGMrTaDANx344LLGiPwzt/aq2touTvXYRM0huRROqbg3ipvIx8JfWUZk1cldd2J62PvgeC2aN0dZa6NgnyVddmdIYfXX9FmCRw13MRvw/BbzuDyItXYQ2JqTd9URGHmXv7A4nWKBnSF4kfRjhxpAoGAFYnBPsSeA3FUoRmV3ejQSQbIt5FKqRcP/05PirmybMGnpIUOEImWF7FKoNaGpiTfCvi3p20NWD/cPEHoy91UaPWwizaAf8p5S86t3JrYmf3LftXZZxhHj4AuCjxZ4Ul/UonA81sIAyrpVfBo/VpVx7dEj0E1vSMXwVkiVrOR5tUCgYAUJcF/WNaz0Z69/NcqgOnuptqJROn2EifBLDHykyntkTSqY1tm1OgbuxzDBOI4NTFKNQkvzLIKQ83RCzoTFmZwuYxgdipqDlPYnxxTQe2d81On9vxyKfRW7PH60josYQ7wMcazOrhi0RKRBpWFyLxpCerRhBLOPT3W8rc+0lUgPg==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAugMiRJ96V9TKezqNYxFmOaRYQEQQfdAmJhc9ZUmiJQKe6u9/qut9cgDES9gFqyBSvBkIxQDMKJ2v14ydzOMq3L7jQmqfUbZKkSIMDYgoL2uHmA8N2o7LRjjV3DwML1JXlcO2TRtzvgm6A2M/EAIPcsnINIOHKYmzW2B6nNZ3pJ7iu1Z8JekdoYAlyh5I1zNeIxaG9qfBM2N2f1iidIf2NXs1EM4aa5/GT8OXxdW1BiXaAeksqHzZvBB26sfTbWHYOz/kQD/oR9+ESZV1x9JQYLnYRc6V4y4RRWSBtEwtmxVhyKZT7PDTHSwxY/LZLzRU22LwKMN/wb2OvGr/Ag6bgwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://gpj.hk1.tunnelfrp.cc/Alipay/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/testZhi/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "https://openapi.alipaydev.com/gateway.do";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

