.class Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    .line 924
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;)V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 949
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 939
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 940
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method
