.class Lcom/baidu/tts/database/SpeechModelTable$1;
.super Ljava/lang/Object;
.source "SpeechModelTable.java"

# interfaces
.implements Lcom/baidu/tts/database/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/database/SpeechModelTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/baidu/tts/client/model/ModelBags;


# direct methods
.method constructor <init>(Lcom/baidu/tts/client/model/ModelBags;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/database/SpeechModelTable$1;->a:Lcom/baidu/tts/client/model/ModelBags;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14

    .prologue
    .line 77
    :try_start_0
    const-string v0, "insert into speechModel (name, version_min, version_max, language, gender, speaker, domain, quality, text_data_id, speech_data_id, sid) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 78
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 79
    iget-object v0, p0, Lcom/baidu/tts/database/SpeechModelTable$1;->a:Lcom/baidu/tts/client/model/ModelBags;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelBags;->getModelInfos()Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_1
    return v0

    .line 82
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelInfo;

    .line 83
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMin()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMax()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getGender()Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeaker()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getDomain()Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getQuality()Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getTextDataId()Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeechDataId()Ljava/lang/String;

    move-result-object v12

    .line 93
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 95
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 99
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 105
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const/4 v0, 0x0

    goto :goto_1
.end method
