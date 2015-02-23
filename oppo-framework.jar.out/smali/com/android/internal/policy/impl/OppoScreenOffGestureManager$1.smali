.class Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$400(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 378
    return-void
.end method
