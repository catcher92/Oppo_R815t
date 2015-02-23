.class public Lcom/oppo/tpreset/tpreset;
.super Ljava/lang/Object;
.source "tpreset.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "tpreset"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native oppo_lcd_display_change(I)I
.end method

.method public static native oppo_lcd_display_read()I
.end method

.method public static native oppo_tp_colour_read()I
.end method

.method public static native tp_double_tap_enable(I)I
.end method

.method public static native tp_reset()I
.end method
