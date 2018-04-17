.class Lorg/apache/shiro/jndi/JndiTemplate$3;
.super Ljava/lang/Object;
.source "JndiTemplate.java"

# interfaces
.implements Lorg/apache/shiro/jndi/JndiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/jndi/JndiTemplate;->rebind(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/jndi/JndiTemplate;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/shiro/jndi/JndiTemplate;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiTemplate$3;->this$0:Lorg/apache/shiro/jndi/JndiTemplate;

    iput-object p2, p0, Lorg/apache/shiro/jndi/JndiTemplate$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/shiro/jndi/JndiTemplate$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInContext(Ljavax/naming/Context;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctx"    # Ljavax/naming/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/shiro/jndi/JndiTemplate$3;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/shiro/jndi/JndiTemplate$3;->val$object:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljavax/naming/Context;->rebind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method
