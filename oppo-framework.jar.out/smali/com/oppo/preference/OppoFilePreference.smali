.class public Lcom/oppo/preference/OppoFilePreference;
.super Lcom/oppo/preference/OppoPreference;
.source "OppoFilePreference.java"

# interfaces
.implements Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;


# static fields
.field public static final ACTION_FILESAVE:Ljava/lang/String; = "oppo.intent.action.FILESAVE_PICKER"

.field public static final ACTION_FILESELECT:Ljava/lang/String; = "oppo.intent.action.FILESELECT_PICKER"

.field public static final FILE_MODE:Ljava/lang/String; = "FILE_MODE"

.field public static final FILE_PATH:Ljava/lang/String; = "FILE_PATH"

.field public static final FILE_TYPE:Ljava/lang/String; = "FILE_TYPE"

.field public static final SAVE_DIR:Ljava/lang/String; = "SAVE_DIR"

.field public static final SELECT_PATH:Ljava/lang/String; = "SELECT_PATH"

.field private static final TAG:Ljava/lang/String; = "OppoFilePreference"

.field public static final VIEW_MODE:Ljava/lang/String; = "VIEW_MODE"


# instance fields
.field private mCurrentPath:Ljava/lang/String;

.field private mFileMode:I

.field private mFileType:I

.field private mLaunchMode:I

.field private mRequestCode:I

.field private mSelectPath:Ljava/lang/String;

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    const v0, 0xc010410

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v4, p0, Lcom/oppo/preference/OppoFilePreference;->mFileType:I

    .line 49
    iput v2, p0, Lcom/oppo/preference/OppoFilePreference;->mFileMode:I

    .line 52
    iput v2, p0, Lcom/oppo/preference/OppoFilePreference;->mViewMode:I

    .line 55
    iput v2, p0, Lcom/oppo/preference/OppoFilePreference;->mLaunchMode:I

    .line 58
    iput-object v3, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    .line 144
    sget-object v1, Loppo/R$styleable;->OppoFilePreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    .line 148
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/preference/OppoFilePreference;->mLaunchMode:I

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/preference/OppoFilePreference;->mFileType:I

    .line 150
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/preference/OppoFilePreference;->mFileMode:I

    .line 151
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/preference/OppoFilePreference;->mViewMode:I

    .line 153
    invoke-virtual {p0, v3}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    .line 160
    :cond_0
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFileType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/preference/OppoFilePreference;->mFileType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFileMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/preference/OppoFilePreference;->mFileMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mViewMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/preference/OppoFilePreference;->mViewMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    return-void
.end method


# virtual methods
.method public getSelectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 354
    iget v1, p0, Lcom/oppo/preference/OppoFilePreference;->mRequestCode:I

    if-ne p1, v1, :cond_4

    .line 355
    const-string v1, "OppoFilePreference"

    const-string v3, "requestCode == mRequestCode"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eqz p3, :cond_0

    .line 357
    iget v1, p0, Lcom/oppo/preference/OppoFilePreference;->mLaunchMode:I

    if-nez v1, :cond_2

    .line 358
    const-string v1, "SELECT_PATH"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, path:Ljava/lang/String;
    const-string v1, "OppoFilePreference"

    const-string v3, "data != null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoFilePreference;->onSaveFile(Ljava/lang/String;)V

    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_1
    move v1, v2

    .line 374
    :goto_2
    return v1

    .line 360
    .restart local v0       #path:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 363
    .end local v0           #path:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/oppo/preference/OppoFilePreference;->mLaunchMode:I

    if-ne v2, v1, :cond_0

    .line 364
    const-string v1, "SAVE_DIR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0       #path:Ljava/lang/String;
    const-string v1, "OppoFilePreference"

    const-string v3, "data != null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v0, :cond_3

    move-object v1, v0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoFilePreference;->onSaveFile(Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 374
    .end local v0           #path:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 347
    invoke-virtual {p1, p0}, Lcom/oppo/preference/OppoPreferenceManager;->registerOnActivityResultListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;)V

    .line 348
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoFilePreference;->mRequestCode:I

    .line 349
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/oppo/preference/OppoFilePreference;->mLaunchMode:I

    if-nez v1, :cond_0

    .line 250
    :cond_0
    if-nez v0, :cond_1

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoFilePreference;->onPrepareIntent(Landroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/preference/OppoPreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/oppo/preference/OppoFilePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 316
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string v0, "FILE_TYPE"

    iget v1, p0, Lcom/oppo/preference/OppoFilePreference;->mFileType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v0, "FILE_MODE"

    iget v1, p0, Lcom/oppo/preference/OppoFilePreference;->mFileMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v0, "VIEW_MODE"

    iget v1, p0, Lcom/oppo/preference/OppoFilePreference;->mViewMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v0, "FILE_PATH"

    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onRestoreFile()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    .line 310
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreFile mSelectPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected onSaveFile(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 288
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveFile path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->persistString(Ljava/lang/String;)Z

    .line 290
    if-eqz p1, :cond_0

    .line 291
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput-object p1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void

    .line 289
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 4
    .parameter "restorePersistedValue"
    .parameter "defaultValueObj"

    .prologue
    .line 321
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, defaultValue:Ljava/lang/String;
    const-string v1, "OppoFilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePersistedValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", defaultValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/oppo/preference/OppoFilePreference;->mSelectPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoFilePreference;->onSaveFile(Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoFilePreference;->onSaveFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public set(IIILjava/lang/String;I)V
    .locals 0
    .parameter "fileType"
    .parameter "fileMode"
    .parameter "viewMode"
    .parameter "path"
    .parameter "launchMode"

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/preference/OppoFilePreference;->mFileType:I

    .line 189
    iput p2, p0, Lcom/oppo/preference/OppoFilePreference;->mFileMode:I

    .line 190
    iput p3, p0, Lcom/oppo/preference/OppoFilePreference;->mViewMode:I

    .line 191
    iput-object p4, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    .line 192
    iput p5, p0, Lcom/oppo/preference/OppoFilePreference;->mLaunchMode:I

    .line 193
    return-void
.end method

.method public setCurrentPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oppo/preference/OppoFilePreference;->mCurrentPath:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setFileMode(I)V
    .locals 0
    .parameter "fileMode"

    .prologue
    .line 210
    iput p1, p0, Lcom/oppo/preference/OppoFilePreference;->mFileMode:I

    .line 211
    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .parameter "fileType"

    .prologue
    .line 201
    iput p1, p0, Lcom/oppo/preference/OppoFilePreference;->mFileType:I

    .line 202
    return-void
.end method

.method public setLaunchMode(I)V
    .locals 0
    .parameter "lauchMode"

    .prologue
    .line 237
    iput p1, p0, Lcom/oppo/preference/OppoFilePreference;->mLaunchMode:I

    .line 238
    return-void
.end method

.method public setViewMode(I)V
    .locals 0
    .parameter "viewMode"

    .prologue
    .line 219
    iput p1, p0, Lcom/oppo/preference/OppoFilePreference;->mViewMode:I

    .line 220
    return-void
.end method
