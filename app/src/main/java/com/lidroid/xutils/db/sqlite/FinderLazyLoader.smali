.class public Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;
.super Ljava/lang/Object;
.source "FinderLazyLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final finderColumn:Lcom/lidroid/xutils/db/table/Finder;

.field private final finderValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "finderColumn"    # Lcom/lidroid/xutils/db/table/Finder;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 19
    .local p0, "this":Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;, "Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    .line 21
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public getAllFromDb()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;, "Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader<TT;>;"
    const/4 v0, 0x0

    .line 26
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Finder;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    .line 27
    .local v1, "table":Lcom/lidroid/xutils/db/table/Table;
    if-eqz v1, :cond_0

    .line 28
    iget-object v2, v1, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 29
    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/table/Finder;->getTargetEntityType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getTargetColumnName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    iget-object v6, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/DbUtils;->findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    .line 33
    :cond_0
    return-object v0
.end method

.method public getFirstFromDb()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;, "Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader<TT;>;"
    const/4 v0, 0x0

    .line 38
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Finder;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    .line 39
    .local v1, "table":Lcom/lidroid/xutils/db/table/Table;
    if-eqz v1, :cond_0

    .line 40
    iget-object v2, v1, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 41
    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/table/Finder;->getTargetEntityType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderColumn:Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getTargetColumnName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    iget-object v6, p0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->finderValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method
