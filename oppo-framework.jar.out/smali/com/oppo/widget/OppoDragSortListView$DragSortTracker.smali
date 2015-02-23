.class Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2921
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    .line 2916
    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2917
    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2919
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mTracking:Z

    .line 2922
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2923
    .local v1, root:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "dslv_state.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 2925
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2927
    :try_start_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 2928
    const-string v2, "mobeta"

    const-string v3, "file created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2935
    :cond_0
    :goto_0
    return-void

    .line 2929
    :catch_0
    move-exception v0

    .line 2930
    .local v0, e:Ljava/io/IOException;
    const-string v2, "mobeta"

    const-string v3, "Could not create dslv_state.txt"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const-string v2, "mobeta"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public appendState()V
    .locals 7

    .prologue
    .line 2944
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_1

    .line 2995
    :cond_0
    :goto_0
    return-void

    .line 2948
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "<DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2949
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2950
    .local v0, children:I
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 2951
    .local v1, first:I
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Positions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2953
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2955
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 2959
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2961
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 2964
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2966
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDragSortListView;->access$1400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I
    invoke-static {v5}, Lcom/oppo/widget/OppoDragSortListView;->access$1400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v5

    #calls: Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I
    invoke-static {v4, v5}, Lcom/oppo/widget/OppoDragSortListView;->access$2900(Lcom/oppo/widget/OppoDragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v6, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I
    invoke-static {v6}, Lcom/oppo/widget/OppoDragSortListView;->access$1400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v6

    #calls: Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoDragSortListView;->access$3000(Lcom/oppo/widget/OppoDragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDragSortListView;->access$1500(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I
    invoke-static {v5}, Lcom/oppo/widget/OppoDragSortListView;->access$1500(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v5

    #calls: Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I
    invoke-static {v4, v5}, Lcom/oppo/widget/OppoDragSortListView;->access$2900(Lcom/oppo/widget/OppoDragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v6, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I
    invoke-static {v6}, Lcom/oppo/widget/OppoDragSortListView;->access$1500(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v6

    #calls: Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoDragSortListView;->access$3000(Lcom/oppo/widget/OppoDragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDragSortListView;->access$900(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2977
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDragSortListView;->access$1100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2979
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mLastY:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDragSortListView;->access$3100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    #getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDragSortListView;->access$2100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 2984
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    add-int v5, v1, v2

    iget-object v6, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    #calls: Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I
    invoke-static {v4, v5, v6}, Lcom/oppo/widget/OppoDragSortListView;->access$3200(Lcom/oppo/widget/OppoDragSortListView;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2986
    :cond_5
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</ShuffleEdges>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2991
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    .line 2992
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->flush()V

    .line 2993
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumInBuffer:I

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 2998
    iget-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mTracking:Z

    if-nez v2, :cond_0

    .line 3020
    :goto_0
    return-void

    .line 3004
    :cond_0
    const/4 v0, 0x1

    .line 3005
    .local v0, append:Z
    :try_start_0
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumFlushes:I

    if-nez v2, :cond_1

    .line 3006
    const/4 v0, 0x0

    .line 3008
    :cond_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3010
    .local v1, writer:Ljava/io/FileWriter;
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3011
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3013
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 3014
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 3016
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3017
    .end local v1           #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mTracking:Z

    .line 2941
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 3023
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3024
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->flush()V

    .line 3026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->mTracking:Z

    .line 3028
    :cond_0
    return-void
.end method
