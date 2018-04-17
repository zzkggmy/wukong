.class public Lcom/baidu/tts/database/SpeechModelTable;
.super Ljava/lang/Object;
.source "SpeechModelTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/database/SpeechModelTable$Field;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const-string v0, "speechModel"

    invoke-static {}, Lcom/baidu/tts/database/SpeechModelTable$Field;->values()[Lcom/baidu/tts/database/SpeechModelTable$Field;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/o/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/baidu/tts/database/c;

    new-instance v1, Lcom/baidu/tts/database/SpeechModelTable$1;

    invoke-direct {v1, p1}, Lcom/baidu/tts/database/SpeechModelTable$1;-><init>(Lcom/baidu/tts/client/model/ModelBags;)V

    invoke-direct {v0, p0, v1}, Lcom/baidu/tts/database/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/database/c$a;)V

    .line 115
    invoke-virtual {v0}, Lcom/baidu/tts/database/c;->a()Z

    .line 116
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "speechModel"

    invoke-static {v0}, Lcom/baidu/tts/o/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
