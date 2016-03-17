package in.vaksys.paypalintegration;

import com.paypal.android.sdk.payments.PayPalConfiguration;
import com.paypal.android.sdk.payments.PayPalPayment;

/**
 * Created by Harsh on 17-03-2016.
 */
public class Config {
    // PayPal app configuration
    public static final String PAYPAL_CLIENT_ID = "ATwvyam5MhrK_UUZbXOA2EJQpz1QKgxu2Blt9LeV9DY_nJQCA3CGLUC7imyV9DMefTLJiZtN5Z9ijdj8";
    public static final String PAYPAL_CLIENT_SECRET = "EPnN1VXy9OKzg0-qWPAG6qHfQN9s7RlwINEKC2jwxJOeeVJOGYZlj5-CNg3xkYgZfEB8EwSc_X3uT9hY";

    public static final String PAYPAL_ENVIRONMENT = PayPalConfiguration.ENVIRONMENT_SANDBOX;
    public static final String PAYMENT_INTENT = PayPalPayment.PAYMENT_INTENT_SALE;
    public static final String DEFAULT_CURRENCY = "USD";

    // PayPal server urls
    public static final String URL_PRODUCTS = "http://192.168.0.106/PayPalServer/v1/products";
    public static final String URL_VERIFY_PAYMENT = "http://192.168.0.106/PayPalServer/v1/verifyPayment";

}
