.class public interface abstract Lcom/baidu/tts/aop/tts/ITts;
.super Ljava/lang/Object;
.source "ITts.java"

# interfaces
.implements Lcom/baidu/tts/i/b;


# virtual methods
.method public abstract auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;
.end method

.method public abstract freeCustomResource(Lcom/baidu/tts/k/e;)I
.end method

.method public abstract getMode()Lcom/baidu/tts/e/n;
.end method

.method public abstract getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;
.end method

.method public abstract getTtsParams()Lcom/baidu/tts/k/j;
.end method

.method public abstract loadCustomResource(Lcom/baidu/tts/k/e;)I
.end method

.method public abstract loadEnglishModel(Lcom/baidu/tts/k/f;)I
.end method

.method public abstract loadModel(Lcom/baidu/tts/k/g;)I
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setMode(Lcom/baidu/tts/e/n;)V
.end method

.method public abstract setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
.end method

.method public abstract setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
.end method

.method public abstract speak(Lcom/baidu/tts/k/i;)V
.end method

.method public abstract synthesize(Lcom/baidu/tts/k/i;)V
.end method
