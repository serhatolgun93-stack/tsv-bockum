package de.tsvbockum.app;
import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
public class MainActivity extends Activity {
 private WebView web;
 @Override public void onCreate(Bundle state) {
  super.onCreate(state);
  web=new WebView(this); setContentView(web);
  web.setWebViewClient(new WebViewClient(){
   @Override public boolean shouldOverrideUrlLoading(WebView v,android.webkit.WebResourceRequest req){
    Uri u=req.getUrl(); if("serhatolgun93-stack.github.io".equals(u.getHost())) return false;
    startActivity(new Intent(Intent.ACTION_VIEW,u)); return true;
   }
  });
  web.setWebChromeClient(new WebChromeClient());
  WebSettings settings=web.getSettings();settings.setJavaScriptEnabled(true);settings.setDomStorageEnabled(true);
  web.loadUrl("https://serhatolgun93-stack.github.io/tsv-bockum/");
 }
 @Override public void onBackPressed(){if(web.canGoBack())web.goBack();else super.onBackPressed();}
}
