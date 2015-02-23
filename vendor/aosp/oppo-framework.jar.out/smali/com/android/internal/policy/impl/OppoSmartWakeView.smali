.class public Lcom/android/internal/policy/impl/OppoSmartWakeView;
.super Ljava/lang/Object;
.source "OppoSmartWakeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;
    }
.end annotation


# static fields
.field private static final PERSIST_KEY:Ljava/lang/String; = "persist.sys.oppo.screenshot"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->init()V

    .line 45
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 48
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const/16 v4, 0x588

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OppoSmartWakeView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mWM:Landroid/view/WindowManager;

    .line 63
    new-instance v0, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;-><init>(Lcom/android/internal/policy/impl/OppoSmartWakeView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->resumeDeliverPointerEvent()V

    .line 82
    return-void
.end method

.method public pauseDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "persist.sys.oppo.screenshot"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public resumeDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "persist.sys.oppo.screenshot"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->pauseDeliverPointerEvent()V

    .line 74
    return-void
.end method
