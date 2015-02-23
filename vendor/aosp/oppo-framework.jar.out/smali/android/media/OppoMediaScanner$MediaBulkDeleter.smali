.class Landroid/media/OppoMediaScanner$MediaBulkDeleter;
.super Ljava/lang/Object;
.source "OppoMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/OppoMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBulkDeleter"
.end annotation


# instance fields
.field mBaseUri:Landroid/net/Uri;

.field mProvider:Landroid/content/IContentProvider;

.field whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Landroid/net/Uri;)V
    .locals 2
    .parameter "provider"
    .parameter "baseUri"

    .prologue
    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 1553
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    .line 1558
    iput-object p1, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    .line 1559
    iput-object p2, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    .line 1560
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1563
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    :cond_0
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    iget-object v0, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1569
    invoke-virtual {p0}, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->flush()V

    .line 1571
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1573
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1574
    .local v2, size:I
    if-lez v2, :cond_0

    .line 1575
    new-array v0, v2, [Ljava/lang/String;

    .line 1576
    .local v0, foo:[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #foo:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 1577
    .restart local v0       #foo:[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1580
    .local v1, numrows:I
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1581
    iget-object v3, p0, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1583
    .end local v0           #foo:[Ljava/lang/String;
    .end local v1           #numrows:I
    :cond_0
    return-void
.end method
