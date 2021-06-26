package com.example.appsmsbest;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;
import android.widget.Toast;

public class ReceptorSMS extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        // aici vom implementa comportamentul Receiverului
        Log.d("TAVY", "Am primit un SMS!");
        // verificam daca intentul primit este de tip SMS_RECEIVED
        if(intent.getAction().equals("android.provider.Telephony.SMS_RECEIVED")){
            Log.d("TAVY", "Am primit un SMS!");
            Bundle pachet;
            pachet = intent.getExtras();
            Object[] mesajSosit = (Object[]) pachet.get("pdus");

            SmsMessage mesajSmsPrimit;
            String format = pachet.getString("format");
            mesajSmsPrimit = SmsMessage.createFromPdu((byte[]) mesajSosit[0], format);

            String numar, textPrimit;
            numar = mesajSmsPrimit.getOriginatingAddress();
            textPrimit = mesajSmsPrimit.getDisplayMessageBody();

            // afisam pentru user informatiile despre mesajul interceptat
            Toast notificare;
            notificare = Toast.makeText(context, "Am primit SMS de la numarul " + numar + " cu mesajul " + textPrimit, Toast.LENGTH_LONG);
            notificare.show();
        }
    }
}
