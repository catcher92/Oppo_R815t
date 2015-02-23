.class public Landroid/preference/OppoCheckSwitchPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OppoCheckSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/OppoCheckSwitchPreference$1;,
        Landroid/preference/OppoCheckSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private mClickToggle:Z

.field private final mListener:Landroid/preference/OppoCheckSwitchPreference$Listener;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSendClickAccessibilityEvent:Z

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;

.field private mSwitchView:Landroid/widget/CompoundButton;

.field private mTextColorSummary:Landroid/content/res/ColorStateList;

.field private mTextColorTitle:Landroid/content/res/ColorStateList;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/OppoCheckSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    const v0, 0xc01007e

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/OppoCheckSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v2, Landroid/preference/OppoCheckSwitchPreference$Listener;

    invoke-direct {v2, p0, v4}, Landroid/preference/OppoCheckSwitchPreference$Listener;-><init>(Landroid/preference/OppoCheckSwitchPreference;Landroid/preference/OppoCheckSwitchPreference$1;)V

    iput-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mListener:Landroid/preference/OppoCheckSwitchPreference$Listener;

    .line 64
    iput-object v4, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    .line 65
    iput-object v4, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    .line 66
    iput-boolean v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    .line 67
    iput-object v4, p0, Landroid/preference/OppoCheckSwitchPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 107
    sget-object v2, Loppo/R$styleable;->OppoPreferenceTextAppearance:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, b:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/OppoCheckSwitchPreference;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 110
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/OppoCheckSwitchPreference;->setSummaryTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    sget-object v2, Loppo/R$styleable;->OppoSwitchPreference:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    .local v1, c:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/preference/OppoCheckSwitchPreference;->setClickToggle(Z)V

    .line 117
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    return-void
.end method

.method static synthetic access$100(Landroid/preference/OppoCheckSwitchPreference;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/preference/OppoCheckSwitchPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSwitch()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 171
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    .line 173
    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 174
    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    .line 177
    :cond_0
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    move-object v1, v0

    .line 180
    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 181
    invoke-virtual {p0, v0}, Landroid/preference/OppoCheckSwitchPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mListener:Landroid/preference/OppoCheckSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Landroid/preference/OppoCheckSwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 155
    iget-boolean v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    instance-of v2, v2, Lcom/oppo/widget/OppoSwitch;

    if-eqz v2, :cond_1

    .line 157
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    check-cast v1, Lcom/oppo/widget/OppoSwitch;

    .line 158
    .local v1, switchView:Lcom/oppo/widget/OppoSwitch;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoSwitch;->changeChecked()V

    .line 167
    .end local v1           #switchView:Lcom/oppo/widget/OppoSwitch;
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    .local v0, newValue:Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 160
    .end local v0           #newValue:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 215
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 192
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 193
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    .line 195
    iget-boolean v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    if-nez v2, :cond_1

    .line 196
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 199
    .local v1, titleView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 200
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorTitle:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 203
    :cond_0
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    .local v0, summaryView:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 205
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorSummary:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 209
    .end local v0           #summaryView:Landroid/widget/TextView;
    .end local v1           #titleView:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    return-object v2
.end method

.method performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .parameter "preferenceScreen"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->onClick()V

    .line 145
    invoke-virtual {p0}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/preference/OppoCheckSwitchPreference;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 258
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 260
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 261
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 262
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 265
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 266
    return-void
.end method

.method public setClickToggle(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 250
    iput-boolean p1, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    .line 251
    return-void
.end method

.method public setSummaryTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 232
    iput-object p1, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorSummary:Landroid/content/res/ColorStateList;

    .line 233
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 223
    iput-object p1, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorTitle:Landroid/content/res/ColorStateList;

    .line 224
    return-void
.end method
