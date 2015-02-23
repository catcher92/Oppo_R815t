.class Lcom/oppo/widget/OppoTouchSearchView$3;
.super Ljava/lang/Object;
.source "OppoTouchSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTouchSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTouchSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView$3;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$3;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    .line 455
    return-void
.end method
