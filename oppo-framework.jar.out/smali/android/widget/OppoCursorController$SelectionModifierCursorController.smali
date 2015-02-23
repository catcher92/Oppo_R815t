.class public Landroid/widget/OppoCursorController$SelectionModifierCursorController;
.super Landroid/widget/OppoCursorController;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mDownScrollX:I

.field private mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field private mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
    .locals 4
    .parameter "editor"
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 417
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .line 403
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 418
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 419
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 420
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 422
    iget-object v1, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/OppoCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 423
    iget-object v1, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {p0, v1, v3, p0}, Landroid/widget/OppoCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 424
    const v1, 0xc09042f

    invoke-virtual {p0, v1}, Landroid/widget/OppoCursorController;->createFloatPanelViewController(I)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    .line 425
    new-instance v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)V

    .line 435
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044d

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 436
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044e

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 437
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044f

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 438
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020452

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 441
    return-void
.end method

.method static synthetic access$100(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    return-object v0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "clipboardmanager"
    .parameter "clipdata"
    .parameter "charsequence"

    .prologue
    const/4 v3, 0x0

    .line 445
    if-nez p2, :cond_0

    .line 446
    invoke-static {v3, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 455
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-static {v3, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 449
    .local v0, clipdata1:Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 450
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 451
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public computePanelPosition([I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 649
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 651
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    aput v0, p1, v3

    .line 654
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_1

    .line 655
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 660
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 658
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 636
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v3, v4}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 637
    iget-object v3, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 638
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 639
    .local v0, i:I
    iget-object v3, p0, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05040e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 641
    .local v1, j:I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v3, v3, v5

    add-int v2, v1, v3

    .line 642
    .local v2, k:I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 645
    :cond_0
    return v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 622
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 623
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 625
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "oppohandleview"
    .parameter "event"

    .prologue
    .line 506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 510
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "event"

    .prologue
    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 524
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v1, :cond_5

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 526
    const/4 v1, 0x1

    if-eq v8, v1, :cond_0

    const/4 v1, 0x3

    if-ne v8, v1, :cond_1

    .line 527
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 528
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 563
    :cond_1
    :goto_0
    const/4 v9, 0x0

    .line 564
    .local v9, handle:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/OppoMagnifierController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 567
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 570
    :cond_3
    packed-switch v8, :pswitch_data_0

    .line 612
    :cond_4
    :goto_1
    :pswitch_0
    return v9

    .line 534
    .end local v9           #handle:Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v8, :cond_1

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 536
    .local v4, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 537
    .local v5, y:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/OppoCursorController$OppoHandleView;->inRecRange(FF)Z

    move-result v11

    .line 538
    .local v11, inStart:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/OppoCursorController$OppoHandleView;->inRecRange(FF)Z

    move-result v10

    .line 539
    .local v10, inEnd:Z
    if-eqz v11, :cond_9

    if-eqz v10, :cond_9

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/OppoCursorController$OppoHandleView;->distance(FF)F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v2, v4, v5}, Landroid/widget/OppoCursorController$OppoHandleView;->distance(FF)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 546
    .local v14, oppohandleview:Landroid/widget/OppoCursorController$OppoHandleView;
    :goto_2
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 553
    .end local v14           #oppohandleview:Landroid/widget/OppoCursorController$OppoHandleView;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v1, :cond_1

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 557
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 544
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .restart local v14       #oppohandleview:Landroid/widget/OppoCursorController$OppoHandleView;
    goto :goto_2

    .line 547
    .end local v14           #oppohandleview:Landroid/widget/OppoCursorController$OppoHandleView;
    :cond_9
    if-eqz v11, :cond_a

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    goto :goto_3

    .line 549
    :cond_a
    if-eqz v10, :cond_6

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    goto :goto_3

    .line 572
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v10           #inEnd:Z
    .end local v11           #inStart:Z
    .restart local v9       #handle:Z
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 573
    .restart local v4       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 574
    .restart local v5       #y:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mDownScrollX:I

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OppoEditor;->startTextSelectionModeIfDouleTap(JFFFF)V

    .line 580
    :cond_b
    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 581
    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto/16 :goto_1

    .line 586
    .end local v4           #x:F
    .end local v5           #y:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 589
    .local v15, pointerCount:I
    const/4 v12, 0x0

    .local v12, index:I
    :goto_4
    if-ge v12, v15, :cond_4

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v13

    .line 592
    .local v13, offset:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v13, v1, :cond_c

    .line 593
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 595
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v13, v1, :cond_d

    .line 596
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 589
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 604
    .end local v12           #index:I
    .end local v13           #offset:I
    .end local v15           #pointerCount:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v16

    .line 605
    .local v16, upScrollX:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mDownScrollX:I

    move/from16 v0, v16

    if-ne v0, v1, :cond_e

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->onTapUpEvent()V

    .line 608
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_1

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 663
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 664
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 667
    iput p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 668
    iput p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 669
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 482
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 483
    iget-object v3, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 485
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 486
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 487
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 488
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 489
    iget-object v3, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->hideInsertionPointCursorControllerWrap()V

    .line 490
    const/4 v3, 0x4

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 493
    .local v1, selectButton:[I
    const/4 v3, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    .line 496
    .local v2, separatorButton:[I
    iget-object v3, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3, v1}, Landroid/widget/OppoEditor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 497
    .local v0, arraylist:Ljava/util/ArrayList;
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3, v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 499
    .end local v0           #arraylist:Ljava/util/ArrayList;
    .end local v1           #selectButton:[I
    .end local v2           #separatorButton:[I
    :cond_0
    return-void

    .line 490
    nop

    :array_0
    .array-data 0x4
        0x4dt 0x4t 0x2t 0xct
        0x4et 0x4t 0x2t 0xct
        0x4ft 0x4t 0x2t 0xct
        0x52t 0x4t 0x2t 0xct
    .end array-data

    .line 493
    :array_1
    .array-data 0x4
        0x53t 0x4t 0x2t 0xct
        0x54t 0x4t 0x2t 0xct
        0x55t 0x4t 0x2t 0xct
    .end array-data
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 458
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    iget-object v2, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 460
    .local v1, start:I
    iget-object v2, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 461
    .local v0, end:I
    if-ltz v1, :cond_0

    if-gez v0, :cond_2

    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->hide()V

    .line 479
    .end local v0           #end:I
    .end local v1           #start:I
    :cond_1
    :goto_0
    return-void

    .line 463
    .restart local v0       #end:I
    .restart local v1       #start:I
    :cond_2
    if-ne v1, v0, :cond_3

    .line 464
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 466
    :cond_3
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 467
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 468
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 469
    :cond_4
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v2, :cond_1

    .line 470
    :cond_5
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 471
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0

    .line 473
    :cond_6
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 475
    iput-boolean v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0
.end method
