.class Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;
.super Landroid/view/View;
.source "OppoSmartWakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoSmartWakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartWakeGestureView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoSmartWakeView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/OppoSmartWakeView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;->this$0:Lcom/android/internal/policy/impl/OppoSmartWakeView;

    .line 93
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method
