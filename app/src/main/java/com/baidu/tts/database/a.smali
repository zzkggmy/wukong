.class public Lcom/baidu/tts/database/a;
.super Ljava/lang/Object;
.source "DbManager.java"


# instance fields
.field private a:Lcom/baidu/tts/j/a;

.field private b:Lcom/baidu/tts/database/b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/j/a;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/baidu/tts/database/a;->a:Lcom/baidu/tts/j/a;

    .line 33
    new-instance v0, Lcom/baidu/tts/database/b;

    iget-object v1, p0, Lcom/baidu/tts/database/a;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v1}, Lcom/baidu/tts/j/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/tts/database/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/database/a;->b:Lcom/baidu/tts/database/b;

    .line 34
    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/tts/database/a;->b:Lcom/baidu/tts/database/b;

    invoke-virtual {v0}, Lcom/baidu/tts/database/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/tts/database/a;->b:Lcom/baidu/tts/database/b;

    invoke-virtual {v0}, Lcom/baidu/tts/database/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select b.absPath from speechModel a left join modelFile b on a."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "=b.sId where a.sId=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    sget-object v0, Lcom/baidu/tts/e/g;->h:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    :cond_0
    return-object v0
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getDomainArray()[Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getLanguageArray()[Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getQualityArray()[Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getGenderArray()[Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/tts/client/model/Conditions;->getSpeakerArray()[Ljava/lang/String;

    move-result-object v6

    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-static {v1}, Lcom/baidu/tts/o/i;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 128
    const-string v0, "version_min <= ?"

    .line 130
    :cond_0
    const-string v7, "domain"

    invoke-static {v7, v2}, Lcom/baidu/tts/o/h;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    const-string v8, "language"

    invoke-static {v8, v3}, Lcom/baidu/tts/o/h;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    const-string v9, "quality"

    invoke-static {v9, v4}, Lcom/baidu/tts/o/h;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    const-string v10, "gender"

    invoke-static {v10, v5}, Lcom/baidu/tts/o/h;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    const-string v11, "speaker"

    invoke-static {v11, v6}, Lcom/baidu/tts/o/h;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 136
    const-string v12, "and"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v7, v13, v0

    const/4 v0, 0x2

    aput-object v8, v13, v0

    const/4 v0, 0x3

    aput-object v9, v13, v0

    const/4 v0, 0x4

    .line 137
    aput-object v10, v13, v0

    const/4 v0, 0x5

    aput-object v11, v13, v0

    .line 136
    invoke-static {v12, v13}, Lcom/baidu/tts/o/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "select * from speechModel where "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const/4 v7, 0x5

    new-array v7, v7, [[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v6, v7, v2

    invoke-static {v1, v7}, Lcom/baidu/tts/o/b;->a(Ljava/lang/String;[[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 145
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-static {p1}, Lcom/baidu/tts/o/b;->a(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "sId"

    invoke-static {v1, v0}, Lcom/baidu/tts/o/h;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from modelFile where "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p0, v1, v0}, Lcom/baidu/tts/database/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "select * from fsFileInfo where absPath=?"

    .line 83
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 177
    :try_start_0
    invoke-virtual {v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 178
    if-eqz v4, :cond_5

    .line 179
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 182
    array-length v5, v2

    .line 183
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_1

    .line 187
    :goto_1
    if-eqz v4, :cond_3

    .line 188
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 194
    :goto_2
    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 198
    :cond_0
    :goto_3
    return-object v0

    .line 184
    :cond_1
    :try_start_2
    aget-object v6, v2, v0

    aget-object v7, v2, v0

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 192
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 197
    :cond_2
    throw v0

    .line 191
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Lcom/baidu/tts/client/model/ModelBags;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    invoke-static {v0, p1}, Lcom/baidu/tts/database/SpeechModelTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V

    .line 117
    return-void
.end method

.method public a(Lcom/baidu/tts/client/model/ModelFileBags;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    invoke-static {v0, p1}, Lcom/baidu/tts/database/ModelFileTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelFileBags;)V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 75
    const-string v0, "replace into fsFileInfo (absPath,state) values (?, ?)"

    .line 76
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 77
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 202
    .line 205
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/tts/database/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 207
    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_2

    .line 209
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 212
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 213
    array-length v6, v4

    .line 214
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_4

    .line 217
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :cond_1
    if-eqz v3, :cond_2

    .line 221
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :cond_2
    if-eqz v2, :cond_3

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    :cond_3
    :goto_1
    return-object v0

    .line 215
    :cond_4
    :try_start_2
    aget-object v7, v4, v1

    aget-object v8, v4, v1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 225
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    if-eqz v2, :cond_3

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    if-eqz v2, :cond_5

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 230
    :cond_5
    throw v0

    .line 224
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "select * from modelFile where sId=?"

    .line 90
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "select * from speechModel where sId=?"

    .line 104
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 106
    return-object v0
.end method
