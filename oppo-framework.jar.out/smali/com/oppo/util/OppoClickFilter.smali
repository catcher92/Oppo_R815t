.class public Lcom/oppo/util/OppoClickFilter;
.super Ljava/lang/Object;
.source "OppoClickFilter.java"


# static fields
.field private static final DBG:Z = true

.field private static final DELETE_TIME_INTERVAL:J = 0x2bcL

.field private static final TAG:Ljava/lang/String; = "OppoClickFliter"


# instance fields
.field private bEnable:Z

.field private mClickTime:J

.field private mName:Ljava/lang/String;

.field private mPreDowntime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const-wide/16 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/util/OppoClickFilter;->bEnable:Z

    .line 35
    iput-wide v1, p0, Lcom/oppo/util/OppoClickFilter;->mPreDowntime:J

    .line 36
    iput-wide v1, p0, Lcom/oppo/util/OppoClickFilter;->mClickTime:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/util/OppoClickFilter;->mName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/oppo/util/OppoClickFilter;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public needFliter()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    iget-boolean v2, p0, Lcom/oppo/util/OppoClickFilter;->bEnable:Z

    if-nez v2, :cond_0

    .line 59
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/util/OppoClickFilter;->mClickTime:J

    .line 52
    iget-wide v2, p0, Lcom/oppo/util/OppoClickFilter;->mClickTime:J

    iget-wide v4, p0, Lcom/oppo/util/OppoClickFilter;->mPreDowntime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2bc

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 53
    iget-wide v2, p0, Lcom/oppo/util/OppoClickFilter;->mClickTime:J

    iput-wide v2, p0, Lcom/oppo/util/OppoClickFilter;->mPreDowntime:J

    .line 54
    const-string v0, "OppoClickFliter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/util/OppoClickFilter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Fliter Click!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/oppo/util/OppoLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    iget-wide v1, p0, Lcom/oppo/util/OppoClickFilter;->mClickTime:J

    iput-wide v1, p0, Lcom/oppo/util/OppoClickFilter;->mPreDowntime:J

    goto :goto_0
.end method
