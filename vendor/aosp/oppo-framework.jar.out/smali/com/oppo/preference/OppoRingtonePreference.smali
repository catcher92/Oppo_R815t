.class public Lcom/oppo/preference/OppoRingtonePreference;
.super Lcom/oppo/preference/OppoPreference;
.source "OppoRingtonePreference.java"

# interfaces
.implements Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoRingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const v0, 0xc010410

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v1, Landroid/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRingtoneType:I

    .line 69
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowDefault:Z

    .line 70
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowSilent:Z

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method private onPrepareOppoRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 164
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/oppo/preference/OppoRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-boolean v0, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Lcom/oppo/preference/OppoRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public getValuesOfShardPeference()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, uriString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 261
    iget v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 263
    if-eqz p3, :cond_0

    .line 264
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 266
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 271
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    .line 274
    :goto_1
    return v1

    .line 266
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 274
    .end local v0           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 255
    invoke-virtual {p1, p0}, Lcom/oppo/preference/OppoPreferenceManager;->registerOnActivityResultListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;)V

    .line 256
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRequestCode:I

    .line 257
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.ACTION_MUSIC_SELECT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoRingtonePreference;->onPrepareOppoRingtonePickerIntent(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getFragment()Lcom/oppo/preference/OppoPreferenceFragment;

    move-result-object v1

    .line 154
    .local v1, owningFragment:Lcom/oppo/preference/OppoPreferenceFragment;
    if-eqz v1, :cond_0

    .line 155
    iget v2, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 227
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 187
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/oppo/preference/OppoRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    iget-boolean v0, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Lcom/oppo/preference/OppoRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 199
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, uriString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .parameter "ringtoneUri"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->persistString(Ljava/lang/String;)Z

    .line 210
    return-void

    .line 209
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restorePersistedValue"
    .parameter "defaultValueObj"

    .prologue
    .line 232
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 99
    iput p1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mRingtoneType:I

    .line 100
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .parameter "showDefault"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowDefault:Z

    .line 120
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .parameter "showSilent"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/oppo/preference/OppoRingtonePreference;->mShowSilent:Z

    .line 139
    return-void
.end method
