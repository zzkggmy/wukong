.class Lorg/apache/shiro/jndi/JndiTemplate$4;
.super Ljava/lang/Object;
.source "JndiTemplate.java"

# interfaces
.implements Lorg/apache/shiro/jndi/JndiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/jndi/JndiTemplate;->unbind(Ljava/lang/String;)V
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
    .line 216
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiTemplate$4;->this$0:Lorg/apache/shiro/jndi/JndiTemplate;

    iput-object p2, p0, Lorg/apache/shiro/jndi/JndiTemplate$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInContext(Ljavax/naming/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Ljavax/naming/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/shiro/jndi/JndiTemplate$4;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljavax/naming/Context;->unbind(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method
