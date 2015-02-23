.class Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;
.super Ljava/lang/Object;
.source "OppoCursorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoCursorController$SelectionModifierCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;


# direct methods
.method constructor <init>(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 429
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    iget-object v0, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    invoke-virtual {v0, p1, v1}, Landroid/widget/OppoEditor;->handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V

    .line 431
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    #getter for: Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;
    invoke-static {v0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->access$100(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 432
    return-void
.end method
