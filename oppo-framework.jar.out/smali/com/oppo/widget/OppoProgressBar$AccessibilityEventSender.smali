.class Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "OppoProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoProgressBar;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;->this$0:Lcom/oppo/widget/OppoProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoProgressBar;Lcom/oppo/widget/OppoProgressBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;-><init>(Lcom/oppo/widget/OppoProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;->this$0:Lcom/oppo/widget/OppoProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1235
    return-void
.end method
