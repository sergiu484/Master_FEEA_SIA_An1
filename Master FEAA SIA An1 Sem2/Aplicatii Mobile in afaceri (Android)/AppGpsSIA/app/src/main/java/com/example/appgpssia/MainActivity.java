package com.example.appgpssia;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import android.Manifest;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements LocationListener {

    TextView lblAfisare, lblAfisare2;
    LocationManager locManager;

    @Override
    public void onStatusChanged(String provider, int status, Bundle extras) {

    }

    @Override
    public void onProviderEnabled(@NonNull String provider) {

    }

    @Override
    public void onProviderDisabled(@NonNull String provider) {

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        lblAfisare = findViewById(R.id.lblAfisare);
        lblAfisare2 = findViewById(R.id.lblAfisare2);
        // cer drepturi de la user pentru a utiliza antena GPS
        ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, 1);
        // obtin managerul antenei GPS
        locManager = (LocationManager) getSystemService(LOCATION_SERVICE);
        // aflam ultima locatie memorata in antena GPS
        Location ultimaLocatie;
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            // TODO: Consider calling
            //    ActivityCompat#requestPermissions
            // here to request the missing permissions, and then overriding
            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
            //                                          int[] grantResults)
            // to handle the case where the user grants the permission. See the documentation
            // for ActivityCompat#requestPermissions for more details.
            return;
        }
        ultimaLocatie = locManager.getLastKnownLocation(LocationManager.GPS_PROVIDER);
        if (ultimaLocatie != null)
            onLocationChanged(ultimaLocatie);
    }

    @Override
    protected void onResume() {
        super.onResume();
        // zic aplicatiei mele sa ceara periodic update-uri de locatie de la antena GPS
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            // TODO: Consider calling
            //    ActivityCompat#requestPermissions
            // here to request the missing permissions, and then overriding
            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
            //                                          int[] grantResults)
            // to handle the case where the user grants the permission. See the documentation
            // for ActivityCompat#requestPermissions for more details.
            return;
        }
        locManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000, 10, this);
    }

    @Override
    public void onLocationChanged(@NonNull Location location) {
        // se declanseaza de FIECARE data cand se modifica locatia din antena
        // vrem sa afisam noua Locatie pe ecranul utilizatorului
        lblAfisare.setText("Noua latitudine:" + Double.toString(location.getLatitude()));
        lblAfisare2.setText("Noua longitudinea:" + Double.toString(location.getLongitude()));

    }
}