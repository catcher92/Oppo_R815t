.class Landroid/media/OppoMediaScanner$1;
.super Ljava/lang/Object;
.source "OppoMediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/OppoMediaScanner;->scanFileInNewThread(Ljava/lang/String;JJZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/OppoMediaScanner;

.field final synthetic val$fileSize:J

.field final synthetic val$isDirectory:Z

.field final synthetic val$lastModified:J

.field final synthetic val$noMedia:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/OppoMediaScanner;Ljava/lang/String;JJZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2481
    iput-object p1, p0, Landroid/media/OppoMediaScanner$1;->this$0:Landroid/media/OppoMediaScanner;

    iput-object p2, p0, Landroid/media/OppoMediaScanner$1;->val$path:Ljava/lang/String;

    iput-wide p3, p0, Landroid/media/OppoMediaScanner$1;->val$lastModified:J

    iput-wide p5, p0, Landroid/media/OppoMediaScanner$1;->val$fileSize:J

    iput-boolean p7, p0, Landroid/media/OppoMediaScanner$1;->val$isDirectory:Z

    iput-boolean p8, p0, Landroid/media/OppoMediaScanner$1;->val$noMedia:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2484
    new-instance v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    iget-object v1, p0, Landroid/media/OppoMediaScanner$1;->this$0:Landroid/media/OppoMediaScanner;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;-><init>(Landroid/media/OppoMediaScanner;Landroid/media/OppoMediaScanner$1;)V

    .line 2485
    .local v0, client:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;
    iget-object v1, p0, Landroid/media/OppoMediaScanner$1;->val$path:Ljava/lang/String;

    iget-wide v2, p0, Landroid/media/OppoMediaScanner$1;->val$lastModified:J

    iget-wide v4, p0, Landroid/media/OppoMediaScanner$1;->val$fileSize:J

    iget-boolean v6, p0, Landroid/media/OppoMediaScanner$1;->val$isDirectory:Z

    iget-boolean v7, p0, Landroid/media/OppoMediaScanner$1;->val$noMedia:Z

    invoke-virtual/range {v0 .. v7}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    .line 2486
    return-void
.end method
