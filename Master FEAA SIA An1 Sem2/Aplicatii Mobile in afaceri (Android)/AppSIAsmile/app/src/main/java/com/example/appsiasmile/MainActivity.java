package com.example.appsiasmile;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        EditText txtUser;
        Button btnShow;

        txtUser = findViewById(R.id.txtName);
        btnShow = findViewById(R.id.btnPress);

        // stabilesc ce se intampla cand apare click pe buton
        btnShow.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // preiau numele de pe formular
                String nameUser;
                nameUser = txtUser.getText().toString();
                // afisez un mesaj pentru utilizator
                Toast notication;
                notication = Toast.makeText(getApplicationContext(), "Hello " + nameUser, Toast.LENGTH_LONG);
                notication.show();
            }
        });
    }
}