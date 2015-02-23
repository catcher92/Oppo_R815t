.class Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnovativeV2HAction"
.end annotation


# instance fields
.field private final AIRPLANE_OPTION:I

.field private final ITEM_IDS:[I

.field private final SHUTDOWN_OPTION:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    .line 864
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->SHUTDOWN_OPTION:I

    .line 865
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->AIRPLANE_OPTION:I

    .line 873
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mHandler:Landroid/os/Handler;

    .line 874
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mContext:Landroid/content/Context;

    .line 875
    return-void

    .line 863
    :array_0
    .array-data 0x4
        0x8ct 0x4t 0x2t 0xct
        0x8dt 0x4t 0x2t 0xct
    .end array-data
.end method

.method private indexToOption(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 911
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 879
    const v2, 0xc090441

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    .line 881
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 882
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 883
    .local v1, itemView:Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 884
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    .end local v1           #itemView:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    return-object v2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 931
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 921
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->indexToOption(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 922
    const-string v1, "OppoGlobalActions"

    const-string v2, "PRESS SHUTDOW OPTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 930
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 924
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->indexToOption(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 925
    const-string v1, "OppoGlobalActions"

    const-string v2, "----PRESS REBOOT OPTION "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v1, "ro.SHUT_DOWN_DEVICE"

    const-string v2, "1"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 927
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot()V

    goto :goto_1
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 907
    return-void
.end method
