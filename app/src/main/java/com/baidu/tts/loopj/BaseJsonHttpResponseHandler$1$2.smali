.class Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$responseString:Ljava/lang/String;

.field private final synthetic val$statusCode:I

.field private final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;

    iput p2, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$statusCode:I

    iput-object p3, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p4, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$t:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$responseString:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;

    invoke-static {v0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;->access$0(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1;)Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    move-result-object v0

    iget v1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$statusCode:I

    iget-object v2, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$t:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$1$2;->val$responseString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void
.end method
