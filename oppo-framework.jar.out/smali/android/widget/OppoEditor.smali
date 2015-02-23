.class public Landroid/widget/OppoEditor;
.super Landroid/widget/Editor;
.source "OppoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoEditor$PastePanelOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEditor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursrOffset:I

.field private mFlag:I

.field private mHasOnTouchListener:Z

.field private mIsInTextSelectionMode:Z

.field private mLongPressed:Z

.field private mMagnifierController:Landroid/widget/OppoMagnifierController;

.field mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

.field mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    .line 65
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 73
    iput v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 74
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 75
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 79
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 83
    return-void
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .parameter "layout"
    .parameter "hintLayout"
    .parameter "offset"

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 1
    .parameter "listener"
    .parameter "canMove"

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 403
    return-void
.end method

.method getButtonShowHides(ZI)Z
    .locals 5
    .parameter "isTextEditable"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    :try_start_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v1, v4, Landroid/text/method/PasswordTransformationMethod;

    .line 486
    .local v1, passwordTransformed:Z
    packed-switch p2, :pswitch_data_0

    .line 522
    .end local v1           #passwordTransformed:Z
    :cond_0
    :goto_0
    return v3

    .line 489
    .restart local v1       #passwordTransformed:Z
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 495
    :pswitch_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 506
    :pswitch_2
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    goto :goto_0

    .line 509
    :pswitch_3
    if-eqz p1, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    .line 511
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isImSwitcherEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 513
    goto :goto_0

    .line 520
    .end local v1           #passwordTransformed:Z
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "OppoEditor"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0xc02044d
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getFloatPanelShowHides([I)Ljava/util/ArrayList;
    .locals 7
    .parameter "buttons"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v5, showHides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 442
    .local v3, isTextEditable:Ljava/lang/Boolean;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 443
    .local v1, button:I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v6, v1}, Landroid/widget/OppoEditor;->getButtonShowHides(ZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v1           #button:I
    :cond_0
    return-object v5
.end method

.method getLastTapPosition()I
    .locals 2

    .prologue
    .line 271
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v0

    .line 273
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 275
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 281
    .end local v0           #lastTapPosition:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getLastTouchOffsets()J
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 253
    .local v2, selectionController:Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 254
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 255
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method getMagnifierController()Landroid/widget/OppoMagnifierController;
    .locals 3

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, controller:Landroid/widget/OppoMagnifierController;
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Landroid/widget/OppoMagnifierController;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/widget/OppoMagnifierController;-><init>(Landroid/content/Context;Landroid/widget/OppoEditor;)V

    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 695
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 697
    :cond_1
    return-object v0
.end method

.method getOppoInsertionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 360
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 361
    const/4 v1, 0x0

    .line 371
    :goto_0
    return-object v1

    .line 364
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 365
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 367
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 368
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 371
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getOppoSelectionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 375
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 376
    const/4 v1, 0x0

    .line 386
    :goto_0
    return-object v1

    .line 379
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 382
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 383
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 386
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getPositionListenerPostion()J
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v0

    .line 407
    .local v0, x:I
    invoke-virtual {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    .line 408
    .local v1, y:I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method getSelectHandleCenterRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 420
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleLeftRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleRightRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleWindowStyle()I
    .locals 1

    .prologue
    .line 394
    const v0, 0x10102c8

    return v0
.end method

.method handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V
    .locals 13
    .parameter "v"
    .parameter "cc"

    .prologue
    const v12, 0xc040527

    const/4 v11, 0x0

    .line 591
    const/4 v5, 0x0

    .line 592
    .local v5, min:I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 594
    .local v4, max:I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 595
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 596
    .local v8, selStart:I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 598
    .local v7, selEnd:I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 599
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 602
    .end local v7           #selEnd:I
    .end local v8           #selStart:I
    :cond_0
    const/4 v1, 0x0

    .line 603
    .local v1, data:Landroid/content/ClipData;
    iget-object v9, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 606
    .local v0, clip:Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 611
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 682
    .end local p2
    :cond_1
    :goto_1
    return-void

    .line 607
    .restart local p2
    :catch_0
    move-exception v2

    .line 608
    .local v2, e:Ljava/lang/SecurityException;
    const-string v9, "OppoEditor"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    .end local v2           #e:Ljava/lang/SecurityException;
    :pswitch_0
    iget-boolean v9, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v9, :cond_1

    .line 614
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 615
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 622
    :pswitch_1
    iget-boolean v9, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v9, :cond_1

    .line 623
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    invoke-static {v9, v11, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 624
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 631
    :pswitch_2
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v1, :cond_1

    .line 635
    const/4 v6, 0x0

    .line 636
    .local v6, paste:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 637
    invoke-virtual {v1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 640
    :cond_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 641
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 642
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4, v6}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 643
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    goto :goto_1

    .line 655
    .end local v6           #paste:Ljava/lang/CharSequence;
    :pswitch_3
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p2, v0, v1, v9}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 657
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 658
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 659
    iget-object v9, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 665
    .restart local p2
    :pswitch_4
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 666
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p2, v0, v1, v9}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 668
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 669
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 670
    iget-object v9, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 676
    .restart local p2
    :pswitch_5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 677
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_1

    .line 678
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0xc02044d
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method hasMagnifierController()Z
    .locals 1

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnTouchListener()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    return v0
.end method

.method hideCursorControllers()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 148
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideSelectionModifierCursorController()V

    .line 149
    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 143
    :cond_0
    return-void
.end method

.method hideInsertionPointCursorControllerWrap()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 477
    :cond_0
    return-void
.end method

.method public hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 136
    :cond_0
    return-void
.end method

.method public isAllTextSelected()Z
    .locals 2

    .prologue
    .line 799
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 801
    const/4 v0, 0x1

    .line 803
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImSwitcherEnabled()Z
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 793
    const/4 v0, 0x0

    .line 795
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInsertToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMagnifierEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 753
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 757
    :cond_0
    return v0
.end method

.method public isSelectionToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v0

    .line 774
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isToolbarEnabled()Z
    .locals 2

    .prologue
    .line 761
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method needInsertPanel()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 88
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 91
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 93
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 95
    :cond_1
    invoke-super {p0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 96
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 107
    :cond_1
    invoke-super {p0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 108
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 261
    if-nez p1, :cond_0

    .line 262
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 266
    :cond_0
    return-void
.end method

.method onTapUpEvent()V
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 530
    :cond_0
    return-void
.end method

.method onTouchEventWrap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const/4 v0, 0x1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 299
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 305
    iput-boolean v0, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 306
    iput-boolean v0, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    goto :goto_0
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 154
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 155
    .local v1, selectAllGotFocus:Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 156
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 157
    .local v2, text:Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 159
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 160
    .local v0, offset:I
    check-cast v2, Landroid/text/Spannable;

    .end local v2           #text:Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 161
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    new-instance v3, Landroid/widget/OppoEditor$1;

    invoke-direct {v3, p0}, Landroid/widget/OppoEditor$1;-><init>(Landroid/widget/OppoEditor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 175
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    .end local v0           #offset:I
    :cond_2
    :goto_0
    return-void

    .line 177
    .restart local v0       #offset:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 4
    .parameter "handled"

    .prologue
    const/4 v3, 0x1

    .line 702
    const/4 p1, 0x0

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, vibrate:Z
    iput-boolean v3, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 706
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 708
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 709
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 710
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoMagnifierController;->show()V

    .line 711
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->show()V

    .line 712
    iput-boolean v3, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 713
    const/4 p1, 0x1

    .line 716
    :cond_0
    if-nez p1, :cond_1

    .line 717
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->touchPositionIsInSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 718
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 719
    const/4 p1, 0x1

    .line 733
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 734
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 737
    :cond_2
    if-eqz p1, :cond_3

    .line 738
    iput-boolean v3, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 741
    :cond_3
    return p1

    .line 721
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 722
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 723
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result p1

    move v0, p1

    goto :goto_0

    .line 726
    :cond_5
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->show()V

    .line 728
    iput-boolean v3, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    goto :goto_0
.end method

.method prepareCursorControllers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-super {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 114
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 117
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 120
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 123
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 130
    :cond_2
    return-void
.end method

.method removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 399
    return-void
.end method

.method public setEditFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 746
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 747
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 748
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideCursorControllers()V

    .line 750
    :cond_0
    return-void
.end method

.method public setHasOnTouchListener(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 807
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 808
    return-void
.end method

.method setTextSelectionWrap(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 412
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 413
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    move v1, v3

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    :cond_2
    const-string v4, "TextView"

    const-string v5, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 197
    goto :goto_0

    .line 200
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_4

    .line 202
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v3

    .line 204
    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v2

    .line 212
    .local v2, willExtract:Z
    if-nez v2, :cond_5

    .line 217
    :cond_5
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 218
    .local v1, selectionStarted:Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_0

    .line 220
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 221
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 222
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #selectionStarted:Z
    :cond_7
    move v1, v3

    .line 217
    goto :goto_1
.end method

.method startTextSelectionMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 543
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v3, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v3

    if-nez v3, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v1

    .line 548
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_2

    .line 553
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    .line 559
    .local v0, mOppoSelectionCursorController:Landroid/widget/OppoCursorController;
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->show()V

    .line 561
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    move v1, v2

    .line 562
    goto :goto_0
.end method

.method startTextSelectionModeIfDouleTap(JFFFF)V
    .locals 9
    .parameter "previousTapUpTime"
    .parameter "x"
    .parameter "y"
    .parameter "previousX"
    .parameter "previousY"

    .prologue
    .line 457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v3, v7, p1

    .line 458
    .local v3, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 459
    sub-float v0, p3, p5

    .line 460
    .local v0, deltaX:F
    sub-float v1, p4, p6

    .line 461
    .local v1, deltaY:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 462
    .local v2, distanceSquared:F
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 464
    .local v6, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 465
    .local v5, touchSlop:I
    mul-int v7, v5, v5

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 467
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 471
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v5           #touchSlop:I
    .end local v6           #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method stopTextSelectionMode()V
    .locals 2

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 535
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 538
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 540
    :cond_1
    return-void
.end method

.method textview()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 230
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 231
    .local v4, selectionStart:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 233
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_0

    .line 247
    :goto_0
    return v7

    .line 237
    :cond_0
    if-le v4, v3, :cond_1

    .line 238
    move v5, v4

    .line 239
    .local v5, tmp:I
    move v4, v3

    .line 240
    move v3, v5

    .line 241
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 243
    .end local v5           #tmp:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 244
    .local v2, selectionController:Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 245
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 247
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 14

    .prologue
    .line 321
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v12, v12, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v12, :cond_1

    .line 322
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 327
    .local v4, layout:Landroid/text/Layout;
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 328
    .local v2, hintLayout:Landroid/text/Layout;
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 329
    .local v8, offset:I
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 330
    .local v6, line:I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 331
    .local v11, top:I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v4, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 333
    .local v0, bottom:I
    invoke-direct {p0, v4, v2, v8}, Landroid/widget/OppoEditor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v9

    .line 334
    .local v9, primaryHorizontal:F
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v10, v12

    .line 335
    .local v10, right:I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v5, v12

    .line 336
    .local v5, left:I
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v3, v12, v13

    .line 338
    .local v3, hspace:I
    const/4 v1, 0x0

    .line 339
    .local v1, cursorOffset:I
    sub-int v12, v10, v3

    if-lez v12, :cond_2

    float-to-int v12, v9

    if-ne v12, v10, :cond_2

    .line 340
    iget v1, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 343
    :cond_2
    invoke-virtual {v4, v8}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x2

    :goto_1
    iput v12, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 345
    move v7, v0

    .line 346
    .local v7, middle:I
    iget v12, p0, Landroid/widget/Editor;->mCursorCount:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 348
    add-int v12, v11, v0

    shr-int/lit8 v7, v12, 0x1

    .line 352
    :cond_3
    const/4 v12, 0x0

    int-to-float v13, v1

    sub-float v13, v9, v13

    invoke-virtual {p0, v12, v11, v7, v13}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 354
    iget v12, p0, Landroid/widget/Editor;->mCursorCount:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 355
    const/4 v12, 0x1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v13

    invoke-virtual {p0, v12, v7, v0, v13}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    goto :goto_0

    .line 343
    .end local v7           #middle:I
    :cond_4
    const/4 v12, 0x1

    goto :goto_1
.end method
