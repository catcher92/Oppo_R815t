.class public Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "OppoPasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoPasswordEntryKeyboardHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private final mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private final mTargetView:Landroid/view/View;

.field private mVibratePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V
    .locals 2
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"
    .parameter "useFullScreenWidth"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 51
    iput v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 61
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 70
    iput-object p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 72
    iput-object p2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 73
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboards()V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 81
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboardsWithSpecificSize(II)V

    goto :goto_0
.end method

.method private createKeyboards()V
    .locals 5

    .prologue
    const v4, 0xc020449

    const/4 v3, 0x1

    .line 114
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0401

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 115
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0402

    invoke-direct {v0, v1, v2, v4}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 117
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 119
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0400

    invoke-direct {v0, v1, v2, v4}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 121
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 122
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 124
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0403

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 125
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 127
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0404

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 129
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 130
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 131
    return-void
.end method

.method private createKeyboardsWithSpecificSize(II)V
    .locals 7
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const v3, 0xc020449

    const/4 v6, 0x1

    .line 92
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0401

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 94
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0402

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 98
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0400

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 100
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 101
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 103
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0403

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 107
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0xc0b0405

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 109
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 110
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 111
    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 286
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 289
    return-void
.end method

.method private handleClose()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method private handleModeChange()V
    .locals 3

    .prologue
    .line 236
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 237
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    .line 238
    .local v1, next:Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v2, :cond_3

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 243
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 244
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 245
    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 247
    :cond_2
    return-void

    .line 240
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v2, :cond_1

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_0
.end method

.method private handleShift()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 258
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v5, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 262
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    .line 263
    .local v2, next:Lcom/oppo/widget/OppoPasswordEntryKeyboard;
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v5, :cond_2

    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v5, :cond_5

    :cond_2
    move v1, v4

    .line 264
    .local v1, isAlphaMode:Z
    :goto_1
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v5, :cond_8

    .line 265
    if-eqz v1, :cond_6

    move v5, v4

    :goto_2
    iput v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 266
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 274
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 275
    if-eq v2, v0, :cond_4

    .line 276
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 278
    :cond_4
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_c

    move v5, v4

    :goto_4
    invoke-virtual {v2, v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShiftLocked(Z)V

    .line 279
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v6, :cond_d

    :goto_5
    invoke-virtual {v5, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    .end local v1           #isAlphaMode:Z
    :cond_5
    move v1, v3

    .line 263
    goto :goto_1

    .restart local v1       #isAlphaMode:Z
    :cond_6
    move v5, v6

    .line 265
    goto :goto_2

    .line 266
    :cond_7
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_3

    .line 267
    :cond_8
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v4, :cond_a

    .line 268
    iput v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 269
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    :goto_6
    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_6

    .line 270
    :cond_a
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_3

    .line 271
    iput v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 272
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    :goto_7
    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_7

    :cond_c
    move v5, v3

    .line 278
    goto :goto_4

    :cond_d
    move v4, v3

    .line 279
    goto :goto_5
.end method

.method private performHapticFeedback()V
    .locals 3

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 303
    :cond_0
    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .parameter "character"

    .prologue
    .line 153
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 154
    .local v3, handler:Landroid/os/Handler;
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 156
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 157
    array-length v0, v2

    .line 158
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 159
    aget-object v1, v2, v4

    .line 160
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 165
    const/4 v5, 0x7

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v0           #N:I
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v4           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public handleBackspace()V
    .locals 1

    .prologue
    .line 250
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 251
    return-void
.end method

.method public handleClear()V
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 255
    return-void
.end method

.method public isAlpha()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 189
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleBackspace()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, -0x7

    if-ne p1, v0, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleClear()V

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 196
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleClose()V

    goto :goto_0

    .line 198
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_5

    .line 199
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_0

    .line 201
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    .line 203
    iget v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 206
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->performHapticFeedback()V

    .line 295
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 305
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 307
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 14
    .parameter "keyEventCode"

    .prologue
    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 173
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 177
    .local v12, handler:Landroid/os/Handler;
    const/16 v13, 0xb

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    const/16 v13, 0xb

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method

.method public setEnableHaptics(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 85
    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    iput p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 150
    return-void

    .line 136
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 137
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 138
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    .local v1, visiblePassword:Z
    :goto_1
    const/4 v0, 0x0

    .line 141
    .local v0, enablePreview:Z
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .end local v0           #enablePreview:Z
    .end local v1           #visiblePassword:Z
    :cond_1
    move v1, v2

    .line 138
    goto :goto_1

    .line 144
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 145
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 146
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 219
    .local v2, tmpArray:[I
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 225
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 226
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 233
    :cond_1
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 222
    const-string v3, "OppoPasswordEntryKeyboardHelper"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 230
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method
