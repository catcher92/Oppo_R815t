.class public Lcom/oppo/preference/OppoTogglePreference;
.super Lcom/oppo/preference/OppoTwoStatePreference;
.source "OppoTogglePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoTogglePreference$1;,
        Lcom/oppo/preference/OppoTogglePreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/oppo/preference/OppoTogglePreference$Listener;

.field private mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const v0, 0xc01007b

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v1, Lcom/oppo/preference/OppoTogglePreference$Listener;

    invoke-direct {v1, p0, v3}, Lcom/oppo/preference/OppoTogglePreference$Listener;-><init>(Lcom/oppo/preference/OppoTogglePreference;Lcom/oppo/preference/OppoTogglePreference$1;)V

    iput-object v1, p0, Lcom/oppo/preference/OppoTogglePreference;->mListener:Lcom/oppo/preference/OppoTogglePreference$Listener;

    .line 46
    iput-object v3, p0, Lcom/oppo/preference/OppoTogglePreference;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

    .line 84
    sget-object v1, Landroid/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTwoStatePreference;->setDisableDependentsState(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoTogglePreference;)Lcom/oppo/preference/OppoPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oppo/preference/OppoTogglePreference;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onBindView(Landroid/view/View;)V

    .line 116
    const v2, 0xc02043e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 118
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTwoStatePreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 122
    instance-of v2, v0, Lcom/oppo/widget/OppoToggle;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 123
    check-cast v1, Lcom/oppo/widget/OppoToggle;

    .line 124
    .local v1, toggleView:Lcom/oppo/widget/OppoToggle;
    iget-object v2, p0, Lcom/oppo/preference/OppoTogglePreference;->mListener:Lcom/oppo/preference/OppoTogglePreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    .end local v1           #toggleView:Lcom/oppo/widget/OppoToggle;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoTwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method
