.class Lorg/apache/shiro/jndi/JndiTemplate$1;
.super Ljava/lang/Object;
.source "JndiTemplate.java"

# interfaces
.implements Lorg/apache/shiro/jndi/JndiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/jndi/JndiTemplate;->lookup(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/jndi/JndiTemplate;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/shiro/jndi/JndiTemplate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiTemplate$1;->this$0:Lorg/apache/shiro/jndi/JndiTemplate;

    iput-object p2, p0, Lorg/apache/shiro/jndi/JndiTemplate$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInContext(Ljavax/naming/Context;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Ljavax/naming/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lorg/apache/shiro/jndi/JndiTemplate$1;->val$name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "located":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 141
    new-instance v1, Ljavax/naming/NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JNDI object with ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/shiro/jndi/JndiTemplate$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found: JNDI implementation returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    return-object v0
.end method
