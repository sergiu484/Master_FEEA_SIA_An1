package com.example.appsiafragmente;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

public class Fragment2 extends Fragment {
    public Fragment2(){

    }

    // "inflatam" fragmentul

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        // return super.onCreateView(inflater, container, savedInstanceState);
        View fragmentulMeu;
        fragmentulMeu = inflater.inflate(R.layout.layout_2, container,false);
        return fragmentulMeu;

    }
}
