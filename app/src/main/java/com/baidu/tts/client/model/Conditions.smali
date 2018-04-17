.class public Lcom/baidu/tts/client/model/Conditions;
.super Ljava/lang/Object;
.source "Conditions.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public appendGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public appendId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public appendLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public appendQuality(Ljava/lang/String;)V
    .locals 1
    .param p1, "quality"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public appendSpeaker(Ljava/lang/String;)V
    .locals 1
    .param p1, "speaker"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public getDomainArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/o/b;->a(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomains()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    return-object v0
.end method

.method public getGenderArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/o/b;->a(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenderJA()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getGenders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    return-object v0
.end method

.method public getJSONConditions()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 210
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_0
    sget-object v0, Lcom/baidu/tts/e/g;->i:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    sget-object v0, Lcom/baidu/tts/e/g;->ab:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    sget-object v0, Lcom/baidu/tts/e/g;->G:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    sget-object v0, Lcom/baidu/tts/e/g;->k:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    sget-object v0, Lcom/baidu/tts/e/g;->L:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    sget-object v0, Lcom/baidu/tts/e/g;->l:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    sget-object v0, Lcom/baidu/tts/e/g;->m:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    invoke-static {v2}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLanguageArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/o/b;->a(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    return-object v0
.end method

.method public getModelIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    return-object v0
.end method

.method public getQualityArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/o/b;->a(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualitys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    return-object v0
.end method

.method public getSpeakerArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/o/b;->a(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeakerJA()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    invoke-static {v0}, Lcom/baidu/tts/o/d;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getSpeakers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDomains(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    .line 97
    return-void
.end method

.method public setDomains([Ljava/lang/String;)V
    .locals 1
    .param p1, "domains"    # [Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Lcom/baidu/tts/o/b;->a([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->f:Ljava/util/Set;

    .line 165
    return-void
.end method

.method public setGenders(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "genders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->d:Ljava/util/Set;

    .line 69
    return-void
.end method

.method public setLanguages(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public setLanguages([Ljava/lang/String;)V
    .locals 1
    .param p1, "languages"    # [Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p1}, Lcom/baidu/tts/o/b;->a([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->c:Ljava/util/Set;

    .line 169
    return-void
.end method

.method public setModelIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "modelIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->a:Ljava/util/Set;

    .line 41
    return-void
.end method

.method public setQualitys(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "qualitys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    .line 111
    return-void
.end method

.method public setQualitys([Ljava/lang/String;)V
    .locals 1
    .param p1, "qualities"    # [Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1}, Lcom/baidu/tts/o/b;->a([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/Conditions;->g:Ljava/util/Set;

    .line 173
    return-void
.end method

.method public setSpeakers(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "speakers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->e:Ljava/util/Set;

    .line 83
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/baidu/tts/client/model/Conditions;->b:Ljava/lang/String;

    .line 207
    return-void
.end method
