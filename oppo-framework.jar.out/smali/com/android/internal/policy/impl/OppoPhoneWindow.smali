.class public Lcom/android/internal/policy/impl/OppoPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "OppoPhoneWindow.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoPhoneWindow"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x1

    const-string v1, "OppoPhoneWindow"

    const-string v2, "OppoPhoneWindow"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static newActionBarContextView(Landroid/content/Context;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static newActionMode(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)Lcom/android/internal/view/StandaloneActionMode;
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "callback"
    .parameter "isFocusable"

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/internal/view/OppoStandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/OppoStandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 83
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/PhoneWindow;
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindow;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;-><init>(Landroid/content/Context;)V

    .line 68
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setActionModeLayout(Landroid/view/ViewStub;)V
    .locals 1
    .parameter "stub"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const v0, 0xc090448

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 8
    .parameter "decor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 147
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 151
    .local v2, layout:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Loppo/R$styleable;->OppoWindow:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 153
    .local v1, addMaskView:Z
    if-eqz v1, :cond_0

    .line 154
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v3, maskView:Landroid/widget/ImageView;
    const v4, 0xc02046e

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 156
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    .end local v3           #maskView:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    return-object v2
.end method

.method public hookGetScreenLayout(I)I
    .locals 9
    .parameter "layoutResource"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v3

    .line 99
    .local v3, features:I
    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_0

    .line 100
    and-int/lit16 v5, v3, 0x100

    if-eqz v5, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 104
    .local v4, isFloating:Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    if-eqz v4, :cond_2

    .line 131
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v4           #isFloating:Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Loppo/R$styleable;->OppoWindow:[I

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 132
    .local v2, b:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 133
    .local v1, addMaskView:Z
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0xc09043e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 137
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->hookGetScreenLayout(I)I

    move-result v5

    return v5

    .line 107
    .end local v1           #addMaskView:Z
    .end local v2           #b:Landroid/content/res/TypedArray;
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v4       #isFloating:Z
    :cond_2
    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_3

    .line 108
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->isOppoStyle()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const-string v5, "OppoPhoneWindow"

    const-string v6, "Use oppo_screen_action_bar_overlay layout!"

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 110
    const p1, 0xc09044a

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->isOppoStyle()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 114
    const-string v5, "OppoPhoneWindow"

    const-string v6, "Use oppo_screen_action_bar layout!"

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    const p1, 0xc090449

    .line 120
    :cond_4
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 121
    const-string v5, "OppoPhoneWindow"

    const-string v6, "Use screen_simple layout when starting window!"

    invoke-static {v5, v6}, Lcom/oppo/util/OppoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const p1, 0xc090447

    goto :goto_0
.end method
