.class Landroid/media/OppoMediaScanner$FileEntry;
.super Ljava/lang/Object;
.source "OppoMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/OppoMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation


# instance fields
.field mFormat:I

.field mLastModified:J

.field mLastModifiedChanged:Z

.field mPath:Ljava/lang/String;

.field mRowId:J


# direct methods
.method constructor <init>(JLjava/lang/String;JI)V
    .locals 1
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"
    .parameter "format"

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-wide p1, p0, Landroid/media/OppoMediaScanner$FileEntry;->mRowId:J

    .line 392
    iput-object p3, p0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 393
    iput-wide p4, p0, Landroid/media/OppoMediaScanner$FileEntry;->mLastModified:J

    .line 394
    iput p6, p0, Landroid/media/OppoMediaScanner$FileEntry;->mFormat:I

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/OppoMediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 396
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRowId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/OppoMediaScanner$FileEntry;->mRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
