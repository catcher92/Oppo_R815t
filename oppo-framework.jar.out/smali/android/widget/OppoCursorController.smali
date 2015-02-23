.class public abstract Landroid/widget/OppoCursorController;
.super Ljava/lang/Object;
.source "OppoCursorController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoCursorController$FloatPanelViewController;,
        Landroid/widget/OppoCursorController$SelectionEndHandleView;,
        Landroid/widget/OppoCursorController$SelectionStartHandleView;,
        Landroid/widget/OppoCursorController$InsertionHandleView;,
        Landroid/widget/OppoCursorController$OppoHandleView;,
        Landroid/widget/OppoCursorController$SelectionModifierCursorController;,
        Landroid/widget/OppoCursorController$InsertionPointCursorController;
    }
.end annotation


# static fields
.field public static final INSERT_CURSOR_TYPE:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "OppoCursorController"

.field public static final MAX_CLIP_DATA_NUMBER:I = 0x3

.field public static final SELECT_CURSOR_TYPE:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEditor:Landroid/widget/OppoEditor;

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
    .locals 1
    .parameter "editor"
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    .line 64
    iput-object p2, p0, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method static synthetic access$200(J)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0, p1}, Landroid/widget/OppoCursorController;->extractRangeStartFromLong(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(J)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0, p1}, Landroid/widget/OppoCursorController;->extractRangeEndFromLong(J)I

    move-result v0

    return v0
.end method

.method static create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;
    .locals 2
    .parameter "editor"
    .parameter "context"
    .parameter "type"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, oppoCursorController:Landroid/widget/OppoCursorController;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 71
    new-instance v0, Landroid/widget/OppoCursorController$InsertionPointCursorController;

    .end local v0           #oppoCursorController:Landroid/widget/OppoCursorController;
    invoke-direct {v0, p0, p1}, Landroid/widget/OppoCursorController$InsertionPointCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .line 76
    .restart local v0       #oppoCursorController:Landroid/widget/OppoCursorController;
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 73
    new-instance v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local v0           #oppoCursorController:Landroid/widget/OppoCursorController;
    invoke-direct {v0, p0, p1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .restart local v0       #oppoCursorController:Landroid/widget/OppoCursorController;
    goto :goto_0
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 106
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 102
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public abstract computePanelPosition([I)V
.end method

.method public abstract computePanelPositionOnBottom()I
.end method

.method public createFloatPanelViewController(I)Landroid/widget/OppoCursorController$FloatPanelViewController;
    .locals 1
    .parameter "layoutId"

    .prologue
    .line 110
    new-instance v0, Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-direct {v0, p0, p0, p1}, Landroid/widget/OppoCursorController$FloatPanelViewController;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoCursorController;I)V

    return-object v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, -0x1

    return v0
.end method

.method public abstract hide()V
.end method

.method initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;
    .locals 6
    .parameter "editor"
    .parameter "type"
    .parameter "oppoCursorController"

    .prologue
    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, oppoHandleView:Landroid/widget/OppoCursorController$OppoHandleView;
    if-nez p2, :cond_1

    .line 126
    iget-object v4, p0, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc080439

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .local v0, drawableIns:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/OppoCursorController$InsertionHandleView;

    .end local v3           #oppoHandleView:Landroid/widget/OppoCursorController$OppoHandleView;
    invoke-direct {v3, p0, p1, v0}, Landroid/widget/OppoCursorController$InsertionHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;)V

    .line 129
    .restart local v3       #oppoHandleView:Landroid/widget/OppoCursorController$OppoHandleView;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .end local v0           #drawableIns:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 151
    const-string v4, "OppoCursorController"

    const-string v5, "Failed to init handle view."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_1
    return-object v3

    .line 131
    :cond_1
    iget-object v4, p0, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc080437

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 133
    .local v1, drawableLtr:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc080438

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 143
    .local v2, drawableRtl:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 144
    new-instance v3, Landroid/widget/OppoCursorController$SelectionStartHandleView;

    .end local v3           #oppoHandleView:Landroid/widget/OppoCursorController$OppoHandleView;
    invoke-direct {v3, p0, p1, v1, v2}, Landroid/widget/OppoCursorController$SelectionStartHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v3       #oppoHandleView:Landroid/widget/OppoCursorController$OppoHandleView;
    goto :goto_0

    .line 145
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    .line 146
    new-instance v3, Landroid/widget/OppoCursorController$SelectionEndHandleView;

    .end local v3           #oppoHandleView:Landroid/widget/OppoCursorController$OppoHandleView;
    invoke-direct {v3, p0, p1, v2, v1}, Landroid/widget/OppoCursorController$SelectionEndHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v3       #oppoHandleView:Landroid/widget/OppoCursorController$OppoHandleView;
    goto :goto_0

    .line 153
    .end local v1           #drawableLtr:Landroid/graphics/drawable/Drawable;
    .end local v2           #drawableRtl:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v3, p3}, Landroid/widget/OppoCursorController$OppoHandleView;->setCursorController(Landroid/widget/OppoCursorController;)V

    .line 154
    invoke-virtual {v3, p2}, Landroid/widget/OppoCursorController$OppoHandleView;->setType(I)V

    goto :goto_1
.end method

.method protected isOutside(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 118
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 119
    .local v1, y:F
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isShowing()Z
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public abstract onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/widget/OppoCursorController;->hide()V

    .line 83
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 159
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract updatePosition()V
.end method
