.class Lorg/apache/shiro/web/servlet/ShiroHttpSession$3;
.super Ljava/lang/Object;
.source "ShiroHttpSession.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getAttributeNames()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/web/servlet/ShiroHttpSession;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/shiro/web/servlet/ShiroHttpSession;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession$3;->this$0:Lorg/apache/shiro/web/servlet/ShiroHttpSession;

    iput-object p2, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession$3;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession$3;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession$3;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
