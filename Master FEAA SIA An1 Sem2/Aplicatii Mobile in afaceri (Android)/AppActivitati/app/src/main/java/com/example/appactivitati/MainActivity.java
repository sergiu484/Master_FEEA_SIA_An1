package com.example.appactivitati;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    Button btnApasa;
    TextView lblMesaj;

    @Override
    protected void onSaveInstanceState(@NonNull Bundle outState) {
        super.onSaveInstanceState(outState);
        // "salvam" datele care ne vor fi necesare la re-creare activitatii ca urmare a configuration change
        outState.putString("MESAJ", lblMesaj.getText().toString());
        Log.i("TAVY-SIA", "S-a apelat OnSaveInstanceState. Activitatea va fi recreata ulterior");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.i("TAVY-SIA", "Aplicatie creata in memorie. onCreate");

        // Verificam daca exista o instanta anterioara a activitatii. Daca da, atunci restauram valorile salvate la distrugerea activitatii
        lblMesaj = findViewById(R.id.lblTextAfisat);
        if(savedInstanceState != null){
            lblMesaj.setText(savedInstanceState.getString("MESAJ"));
            Log.i("TAVY-SIA","Activitatea este de fapt 'recreata'.");
        }

        // stabilim comportamentul butonului de pe activity
        btnApasa = findViewById(R.id.btnApasa);
        btnApasa.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // cand user-ul apasa butonul, se modifica textul de pe formular
                lblMesaj.setText("Salutare SIA!");
                Intent i;
                i = new Intent(MainActivity.this, FrmDestinatie.class);
                startActivity(i);
            }
        });

    }

    // implementam cilul de viata al activitatii curente

    @Override
    protected void onStart() {
        super.onStart();
        Log.i("TAVY-SIA","Aplicatia este startata. onStart");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.i("TAVY-SIA","Aplicatia este Resumed - adica disponibila pentru user. onResume");
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        Log.i("TAVY-SIA","Am revenit si aplicatia este pregatita. onRestart") ;
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.i("TAVY-SIA","Aplicatia este onPause");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.i("TAVY-SIA","Aplicatia este stopata. onStop");
        Log.i("TAVY-SIA","Cineva m-a oprit, dar o sa revin in curand.");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.i("TAVY-SIA","Activitate distrusa. Adios, bye-bye! onDestroy");
    }
}