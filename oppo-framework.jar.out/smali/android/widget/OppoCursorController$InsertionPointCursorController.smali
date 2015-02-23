.class public Landroid/widget/OppoCursorController$InsertionPointCursorController;
.super Landroid/widget/OppoCursorController;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mDownScrollX:I

.field private mDownScrollY:I

.field private mFousedFlag:Z

.field private final mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field private mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

.field private mPreviousDownTime:J

.field mShowOnOneShot:Z

.field private mTextOffset:I


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
    .locals 3
    .parameter "editor"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .line 191
    invoke-virtual {p0, p1, v2, p0}, Landroid/widget/OppoCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 192
    const v1, 0xc090430

    invoke-virtual {p0, v1}, Landroid/widget/OppoCursorController;->createFloatPanelViewController(I)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    .line 193
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    .line 194
    iput-boolean v2, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 196
    new-instance v0, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;-><init>(Landroid/widget/OppoCursorController$InsertionPointCursorController;)V

    .line 205
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020450

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020451

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044f

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020452

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoCursorController$InsertionPointCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private showInsertionPanel()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 306
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->invisible()V

    .line 307
    iget-object v0, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    iget v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController;->setMinMaxOffset(I)V

    .line 308
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 3
    .parameter "postion"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 228
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 229
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 233
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 234
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 379
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 382
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 386
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x1

    .line 391
    .local v0, flag:Z
    :goto_0
    return v0

    .line 389
    .end local v0           #flag:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #flag:Z
    goto :goto_0
.end method

.method onClipBoardPancelClick()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "oppohandleview"
    .parameter "ev"

    .prologue
    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 277
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 284
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 292
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->showInsertionPanel()V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return v8

    .line 240
    :pswitch_0
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    iput v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    .line 241
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    iput v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v5}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->hide()V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 250
    .local v4, upScrollY:I
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 251
    .local v3, upScrollX:I
    const/4 v0, 0x1

    .line 252
    .local v0, isScroll:Z
    iget v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    if-ne v4, v5, :cond_1

    iget v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    if-eq v3, v5, :cond_2

    .line 253
    :cond_1
    const/4 v0, 0x0

    .line 256
    :cond_2
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    .line 257
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 258
    .local v2, start:I
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 259
    .local v1, offset:I
    iget-object v5, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v5}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/OppoCursorController;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController;->isOutside(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 260
    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v5}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 261
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 264
    :cond_3
    iput v8, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    .line 265
    iput v8, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 7

    .prologue
    .line 334
    const/4 v6, 0x4

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 336
    .local v3, selectButton:[I
    const/4 v6, 0x3

    new-array v4, v6, [I

    fill-array-data v4, :array_1

    .line 339
    .local v4, separatorButton:[I
    iget-object v6, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6, v3}, Landroid/widget/OppoEditor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 340
    .local v0, arraylist:Ljava/util/ArrayList;
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v6, v3, v4, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 341
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 345
    iget-object v6, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 346
    .local v5, start:I
    iget v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-gtz v6, :cond_3

    .line 347
    :cond_0
    const/4 v1, 0x1

    .line 352
    .local v1, canSelectFlag:Z
    :goto_0
    iput v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 353
    iget-object v6, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/OppoMagnifierController;->isMagnifierShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 355
    move v2, v1

    .line 360
    .local v2, magnifierFlag:Z
    :goto_1
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 361
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 362
    iget-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/OppoCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v6, :cond_5

    .line 363
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 367
    :goto_2
    iget-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v6, :cond_1

    .line 368
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 370
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 373
    :cond_2
    return-void

    .line 349
    .end local v1           #canSelectFlag:Z
    .end local v2           #magnifierFlag:Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #canSelectFlag:Z
    goto :goto_0

    .line 357
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #magnifierFlag:Z
    goto :goto_1

    .line 365
    :cond_5
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    goto :goto_2

    .line 334
    nop

    :array_0
    .array-data 0x4
        0x50t 0x4t 0x2t 0xct
        0x51t 0x4t 0x2t 0xct
        0x4ft 0x4t 0x2t 0xct
        0x52t 0x4t 0x2t 0xct
    .end array-data

    .line 336
    :array_1
    .array-data 0x4
        0x53t 0x4t 0x2t 0xct
        0x54t 0x4t 0x2t 0xct
        0x55t 0x4t 0x2t 0xct
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Landroid/widget/OppoCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 213
    iget v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    if-gez v0, :cond_1

    .line 214
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->hide()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 220
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0
.end method
