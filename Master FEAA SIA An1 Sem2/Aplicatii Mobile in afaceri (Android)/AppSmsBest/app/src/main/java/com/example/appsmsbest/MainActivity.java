package com.example.appsmsbest;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import android.Manifest;
import android.app.Activity;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    // definesc controalele vizuale sub forma de obiecte Java
    EditText txtMessage, txtDestination;
    Button btnSend;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // cerem explict de la user permisiunea SEND_SMS
        ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.SEND_SMS, Manifest.permission.RECEIVE_SMS},1);

        // obtin obiectele de pe formular
        // obtinem view-urile din XML in Java
        txtDestination = findViewById(R.id.txtDestination);
        txtMessage = findViewById(R.id.txtMessageToSend);
        btnSend = findViewById(R.id.btnSendMessage);

        btnSend.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // definesc un manager de SMS
                SmsManager sender;
                sender = SmsManager.getDefault();
                String message, numberDestination;
                message = txtMessage.getText().toString();
                numberDestination = txtDestination.getText().toString();
                // numberDestination = "5556";
                try{
                    sender.sendTextMessage(numberDestination, null, message,null, null);
                    // trimitere cu succes. Afisam user-ului un mesaj
                    Toast notification = Toast.makeText(getApplicationContext(), "Sms with success!", Toast.LENGTH_LONG);
                    notification.show();
                }
                catch (Exception error){
                    // afisam eroarea catre user
                    Toast notification = Toast.makeText(getApplicationContext(), "Error" + error.getMessage(), Toast.LENGTH_LONG);
                    notification.show();
                }

            }
        });
    }
}