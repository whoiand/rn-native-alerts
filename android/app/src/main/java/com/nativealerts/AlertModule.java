package com.nativealerts;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import android.app.AlertDialog;
import android.content.DialogInterface;

public class AlertModule extends ReactContextBaseJavaModule {
    AlertModule(ReactApplicationContext context) {
        super(context);
    }
    @Override
    public String getName() {
        return "AlertModule";
    }
    @ReactMethod
    public void invokeModal(String title, String message) {
        new AlertDialog.Builder(AlertModule.super.getCurrentActivity())
                .setTitle(title)
                .setMessage(message)
                .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        // button action handler
                    }
                })
                .setIcon(android.R.drawable.ic_dialog_alert)
                .show();
    }
}
