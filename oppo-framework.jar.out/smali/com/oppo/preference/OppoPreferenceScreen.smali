.class public final Lcom/oppo/preference/OppoPreferenceScreen;
.super Lcom/oppo/preference/OppoPreferenceGroup;
.source "OppoPreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Lcom/oppo/widget/OppoMultiListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const v0, 0xc010408

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mListView:Lcom/oppo/widget/OppoMultiListView;

    if-eqz v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mListView:Lcom/oppo/widget/OppoMultiListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    :cond_0
    new-instance v4, Lcom/oppo/widget/OppoMultiListView;

    invoke-direct {v4, v0}, Lcom/oppo/widget/OppoMultiListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mListView:Lcom/oppo/widget/OppoMultiListView;

    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 178
    .local v2, padding:I
    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mListView:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v4, v2, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mListView:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {p0, v4}, Lcom/oppo/preference/OppoPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 182
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 183
    .local v3, title:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    invoke-direct {v1, v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 184
    .local v1, dialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 189
    :goto_0
    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mListView:Lcom/oppo/widget/OppoMultiListView;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 191
    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oppo/preference/OppoPreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 198
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 199
    return-void

    .line 187
    :cond_2
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 155
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroup;->onAttachedToActivity()V

    .line 159
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;-><init>(Lcom/oppo/preference/OppoPreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 203
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 204
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 216
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 217
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, item:Ljava/lang/Object;
    instance-of v2, v0, Lcom/oppo/preference/OppoPreference;

    if-nez v2, :cond_1

    .line 225
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 223
    check-cast v1, Lcom/oppo/preference/OppoPreference;

    .line 224
    .local v1, preference:Lcom/oppo/preference/OppoPreference;
    invoke-virtual {v1, p0}, Lcom/oppo/preference/OppoPreference;->performClick(Lcom/oppo/preference/OppoPreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 250
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 254
    check-cast v0, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;

    .line 255
    .local v0, myState:Lcom/oppo/preference/OppoPreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 256
    iget-boolean v1, v0, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, v0, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/oppo/preference/OppoPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 234
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 235
    .local v2, superState:Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 236
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 243
    :goto_0
    return-object v1

    .line 240
    :cond_1
    new-instance v1, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 241
    .local v1, myState:Lcom/oppo/preference/OppoPreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;->isDialogShowing:Z

    .line 242
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/preference/OppoPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method
