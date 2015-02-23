.class Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
.super Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
.source "OppoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/android/internal/app/OppoActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/OppoActionBarImpl;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 190
    iput-object p2, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 191
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v0, v0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 201
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 202
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->closeMode()V

    .line 206
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$900(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    iput-object v2, v0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    goto :goto_0
.end method
