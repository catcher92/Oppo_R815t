.class abstract Landroid/widget/OppoCursorController$OppoHandleView;
.super Landroid/view/View;
.source "OppoCursorController.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "OppoHandleView"
.end annotation


# static fields
.field public static final HANDLE_END:I = 0x2

.field public static final HANDLE_INSERT:I = 0x0

.field public static final HANDLE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "OppoHandleView"

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContainerX:I

.field private mContainerY:I

.field private mCursorController:Landroid/widget/OppoCursorController;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEditor:Landroid/widget/OppoEditor;

.field private mHandleRange:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mTextView:Landroid/widget/TextView;

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mType:I

.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter "editor"
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 710
    iput-object p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 711
    invoke-virtual {p2}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 699
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 700
    iput v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 701
    iput v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 702
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    .line 703
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    .line 704
    iput-boolean v6, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    .line 712
    iput-object p2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    .line 713
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    .line 714
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05040f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHandleRange:I

    .line 716
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v4}, Landroid/widget/OppoEditor;->getSelectHandleWindowStyle()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 718
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 719
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 720
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 721
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 722
    iput-object p3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 723
    iput-object p4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 724
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->updateDrawable()V

    .line 726
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 727
    .local v0, handleHeight:I
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchOffsetY:F

    .line 728
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    .line 729
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 744
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 745
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 746
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 747
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 748
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 751
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 752
    .local v3, now:J
    const/4 v0, 0x0

    .line 753
    .local v0, i:I
    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 754
    .local v2, index:I
    iget v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 755
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 756
    add-int/lit8 v0, v0, 0x1

    .line 757
    iget v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 759
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 761
    iget-object v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 763
    :cond_1
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 739
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 740
    invoke-direct {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->addPositionToTouchUpFilter(I)V

    .line 741
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    .line 815
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 816
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 817
    return-void
.end method

.method public distance(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 833
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected abstract getCurrentCursorOffset()I
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .parameter "hostpotPos"

    .prologue
    .line 809
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 810
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    aput v1, p1, v0

    .line 811
    return-void
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->dismiss()V

    .line 821
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0, p0}, Landroid/widget/OppoEditor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 822
    return-void
.end method

.method public inRecRange(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 853
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 854
    .local v2, height:I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int v0, v3, v4

    .line 855
    .local v0, containerX:I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    div-int/lit8 v4, v2, 0x2

    add-int v1, v3, v4

    .line 856
    .local v1, containerY:I
    int-to-float v3, v0

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHandleRange:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v3, v1

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 838
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 861
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 862
    const/4 v0, 0x1

    .line 869
    :goto_0
    return v0

    .line 865
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    const/4 v0, 0x0

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected needShowHandle()Z
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x1

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 824
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 883
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 884
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 885
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 889
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 890
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 931
    iget-object v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v9, p0, p1}, Landroid/widget/OppoCursorController;->onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 976
    :goto_0
    return v11

    .line 934
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 936
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/OppoCursorController$OppoHandleView;->startTouchUpFilter(I)V

    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    .line 938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 939
    iget-object v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v9}, Landroid/widget/OppoEditor;->getPositionListenerPostion()J

    move-result-wide v5

    .line 940
    .local v5, range:J
    #calls: Landroid/widget/OppoCursorController;->extractRangeStartFromLong(J)I
    invoke-static {v5, v6}, Landroid/widget/OppoCursorController;->access$200(J)I

    move-result v9

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    .line 941
    #calls: Landroid/widget/OppoCursorController;->extractRangeEndFromLong(J)I
    invoke-static {v5, v6}, Landroid/widget/OppoCursorController;->access$300(J)I

    move-result v9

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    .line 942
    iput-boolean v11, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    .line 946
    .end local v5           #range:J
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 947
    .local v7, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 948
    .local v8, rawY:F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v4, v9, v10

    .line 949
    .local v4, previousVerticalOffset:F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 952
    .local v0, currentVerticalOffset:F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_1

    .line 953
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 954
    .local v3, newVerticalOffset:F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 960
    :goto_1
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 961
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    sub-float v9, v7, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 962
    .local v1, newPosX:F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchOffsetY:F

    add-float v2, v9, v10

    .line 963
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePosition(FF)V

    goto :goto_0

    .line 956
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    :cond_1
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 957
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 968
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v4           #previousVerticalOffset:F
    .end local v7           #rawX:F
    .end local v8           #rawY:F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->filterOnTouchUp()V

    .line 969
    iput-boolean v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 973
    :pswitch_3
    iput-boolean v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public positionAtCursorOffset(IZ)V
    .locals 5
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 766
    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 767
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 768
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v2}, Landroid/widget/OppoEditor;->prepareCursorControllers()V

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_3

    move v1, v2

    .line 773
    .local v1, offsetChanged:Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    .line 774
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->updateSelection(I)V

    .line 775
    invoke-direct {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->addPositionToTouchUpFilter(I)V

    .line 776
    invoke-virtual {p0, p1, v3}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 777
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 778
    iput-boolean v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .end local v1           #offsetChanged:Z
    :cond_3
    move v1, v3

    .line 772
    goto :goto_1
.end method

.method public setCursorController(Landroid/widget/OppoCursorController;)V
    .locals 0
    .parameter "oppoCursorController"

    .prologue
    .line 805
    iput-object p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    .line 806
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 849
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mType:I

    .line 850
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 873
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/OppoEditor;->addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 877
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 878
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 732
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 733
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 734
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 735
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    .line 736
    return-void

    .line 734
    :cond_0
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 894
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 895
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->updatePosition()V

    .line 927
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 899
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 900
    :cond_1
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    .line 902
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 904
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    .line 905
    iput p2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    .line 907
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    .line 910
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 911
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 912
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    .line 913
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->needShowHandle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 914
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 915
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 925
    :cond_4
    :goto_1
    iput-boolean v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 917
    :cond_5
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 921
    :cond_6
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 922
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->dismiss()V

    goto :goto_1
.end method

.method protected updatePositionXY(IZ)V
    .locals 8
    .parameter "offset"
    .parameter "flag"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 783
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_0

    .line 802
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 787
    .local v0, line:I
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    .line 788
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    .line 789
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    .line 790
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    .line 791
    if-eqz p2, :cond_1

    .line 792
    new-array v1, v7, [I

    .line 793
    .local v1, position:[I
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 794
    aget v3, v1, v5

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 795
    aget v3, v1, v6

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    goto :goto_0

    .line 797
    .end local v1           #position:[I
    :cond_1
    new-array v2, v7, [I

    .line 798
    .local v2, positionWindow:[I
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 799
    aget v3, v2, v5

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 800
    aget v3, v2, v6

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
