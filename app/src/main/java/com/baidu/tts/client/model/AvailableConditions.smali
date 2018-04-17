.class public Lcom/baidu/tts/client/model/AvailableConditions;
.super Ljava/lang/Object;
.source "AvailableConditions.java"


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

.field private b:Ljava/util/Set;
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public appendSpeaker(Ljava/lang/String;)V
    .locals 1
    .param p1, "speaker"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
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
    .line 20
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

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
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    return-object v0
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
    .line 27
    .local p1, "genders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/AvailableConditions;->a:Ljava/util/Set;

    .line 28
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
    .line 41
    .local p1, "speakers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/AvailableConditions;->b:Ljava/util/Set;

    .line 42
    return-void
.end method
