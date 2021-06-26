package com.example.appsiafragmente;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    Button btn1, btn2, btn3;
    FragmentManager fm;
    FragmentTransaction ft;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // obtin butoanele in memorie, ca obiecte
        btn1=findViewById(R.id.btn1);
        btn2=findViewById(R.id.btn2);
        btn3=findViewById(R.id.btn3);

        // folosesc un manager de fragmente
        fm = getSupportFragmentManager();

        // utilizam tranzactii pentru gestiunea fragmentelor
        ft = fm.beginTransaction();
        ft.add(R.id.layoutDreapta, new Fragment1());
        ft.commit();

        // definesc actiunile pentru fiecare buton in parte
        btn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Fragment1 frg = new Fragment1();
                ft = fm.beginTransaction();
                ft.replace(R.id.layoutDreapta, frg);
                ft.commit();
            }
        });
        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Fragment2 frg = new Fragment2();
                ft = fm.beginTransaction();
                ft.replace(R.id.layoutDreapta, frg);
                ft.commit();
            }
        });
        btn3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Fragment3 frg = new Fragment3();
                ft = fm.beginTransaction();
                ft.replace(R.id.layoutDreapta, frg);
                ft.commit();
            }
        });
    }
}