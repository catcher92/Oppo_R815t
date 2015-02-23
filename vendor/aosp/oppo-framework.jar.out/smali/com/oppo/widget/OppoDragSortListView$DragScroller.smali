.class Lcom/oppo/widget/OppoDragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "OppoDragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2796
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2796
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2793
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2789
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 2823
    iget-boolean v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mAbort:Z

    if-eqz v11, :cond_0

    .line 2824
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2907
    :goto_0
    return-void

    .line 2830
    :cond_0
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 2831
    .local v1, first:I
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    .line 2832
    .local v2, last:I
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 2833
    .local v0, count:I
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 2834
    .local v8, padTop:I
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    sub-int/2addr v11, v8

    iget-object v12, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    sub-int v3, v11, v12

    .line 2836
    .local v3, listHeight:I
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mY:I
    invoke-static {v11}, Lcom/oppo/widget/OppoDragSortListView;->access$600(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v11

    iget-object v12, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I
    invoke-static {v12}, Lcom/oppo/widget/OppoDragSortListView;->access$2100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v12

    iget-object v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2837
    .local v5, minY:I
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mY:I
    invoke-static {v11}, Lcom/oppo/widget/OppoDragSortListView;->access$600(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v11

    iget-object v12, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I
    invoke-static {v12}, Lcom/oppo/widget/OppoDragSortListView;->access$2100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v12

    iget-object v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2839
    .local v4, maxY:I
    iget v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->scrollDir:I

    if-nez v11, :cond_4

    .line 2840
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2842
    .local v10, v:Landroid/view/View;
    if-nez v10, :cond_1

    .line 2843
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2846
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    if-ne v11, v8, :cond_2

    .line 2847
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2851
    :cond_2
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;
    invoke-static {v11}, Lcom/oppo/widget/OppoDragSortListView;->access$2400(Lcom/oppo/widget/OppoDragSortListView;)Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F
    invoke-static {v12}, Lcom/oppo/widget/OppoDragSortListView;->access$2200(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v12

    int-to-float v13, v4

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollHeight:F
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$2300(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v13

    div-float/2addr v12, v13

    iget-wide v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    invoke-interface {v11, v12, v13, v14}, Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrollSpeed:F

    .line 2868
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mCurrTime:J

    .line 2869
    iget-wide v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mCurrTime:J

    iget-wide v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v11, v13

    long-to-float v11, v11

    iput v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dt:F

    .line 2875
    iget v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrollSpeed:F

    iget v12, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dt:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    .line 2878
    iget v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    if-ltz v11, :cond_7

    .line 2879
    iget v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    .line 2880
    move v7, v1

    .line 2886
    .local v7, movePos:I
    :goto_2
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    sub-int v12, v7, v1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2887
    .local v6, moveItem:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    add-int v9, v11, v12

    .line 2889
    .local v9, top:I
    if-nez v7, :cond_3

    if-le v9, v8, :cond_3

    .line 2890
    move v9, v8

    .line 2894
    :cond_3
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v12, 0x1

    #setter for: Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v11, v12}, Lcom/oppo/widget/OppoDragSortListView;->access$2702(Lcom/oppo/widget/OppoDragSortListView;Z)Z

    .line 2896
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    sub-int v12, v9, v8

    invoke-virtual {v11, v7, v12}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2897
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Lcom/oppo/widget/OppoDragSortListView;->layoutChildren()V

    .line 2898
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    .line 2900
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v12, 0x0

    #setter for: Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v11, v12}, Lcom/oppo/widget/OppoDragSortListView;->access$2702(Lcom/oppo/widget/OppoDragSortListView;Z)Z

    .line 2903
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v12, 0x0

    #calls: Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(ILandroid/view/View;Z)V
    invoke-static {v11, v7, v6, v12}, Lcom/oppo/widget/OppoDragSortListView;->access$2800(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)V

    .line 2905
    iget-wide v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mCurrTime:J

    iput-wide v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    goto/16 :goto_0

    .line 2854
    .end local v6           #moveItem:Landroid/view/View;
    .end local v7           #movePos:I
    .end local v9           #top:I
    .end local v10           #v:Landroid/view/View;
    :cond_4
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    sub-int v12, v2, v1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2855
    .restart local v10       #v:Landroid/view/View;
    if-nez v10, :cond_5

    .line 2856
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2859
    :cond_5
    add-int/lit8 v11, v0, -0x1

    if-ne v2, v11, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int v12, v3, v8

    if-gt v11, v12, :cond_6

    .line 2860
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2864
    :cond_6
    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;
    invoke-static {v11}, Lcom/oppo/widget/OppoDragSortListView;->access$2400(Lcom/oppo/widget/OppoDragSortListView;)Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    move-result-object v11

    int-to-float v12, v5

    iget-object v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$2500(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v13

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollHeight:F
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$2600(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v13

    div-float/2addr v12, v13

    iget-wide v13, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    invoke-interface {v11, v12, v13, v14}, Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v11

    neg-float v11, v11

    iput v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2882
    :cond_7
    neg-int v11, v3

    iget v12, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    .line 2883
    move v7, v2

    .restart local v7       #movePos:I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 2799
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mAbort:Z

    .line 2802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2803
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->tStart:J

    .line 2804
    iget-wide v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    .line 2805
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->scrollDir:I

    .line 2806
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2808
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .parameter "now"

    .prologue
    .line 2811
    if-eqz p1, :cond_0

    .line 2812
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2819
    :goto_0
    return-void

    .line 2815
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
