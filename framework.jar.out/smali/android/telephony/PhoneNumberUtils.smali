.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final ID_INVALID:I = 0x5

.field public static final ID_VALID:I = 0x3

.field public static final ID_VALID_BUT_NEED_AREA_CODE:I = 0x2

.field public static final ID_VALID_DOMESTIC_ONLY:I = 0x4

.field public static final ID_VALID_ECC:I = 0x1

.field public static final ID_VALID_WHEN_CALL_EXIST:I = 0x6

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0xb
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = " match the 11 numbers"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field static final MIN_MATCH_CTA:I = 0xb

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x34

    const/16 v7, 0x33

    const/16 v6, 0x32

    const/16 v5, 0x39

    const/16 v4, 0x37

    .line 112
    const-string v1, "[\\+]?[0-9.-]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 127
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "US"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "CA"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "AS"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "AI"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "AG"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "BS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "BB"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "BM"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "VG"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "KY"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "DO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "GD"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "GU"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "JM"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "PR"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "MS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "MP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KN"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "LC"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "VC"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "TT"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "TC"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "VI"

    aput-object v3, v1, v2

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2049
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2051
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x61

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x62

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2052
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x42

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2054
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2055
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x44

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x45

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2057
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2058
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x47

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x48

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x49

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2060
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6a

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6b

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6c

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2061
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4a

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4c

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2063
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6d

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6e

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6f

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2064
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4d

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4e

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4f

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2066
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x71

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x73

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2067
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x51

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x52

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x53

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2069
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x74

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x75

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x76

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2070
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x54

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x55

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x56

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2072
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x78

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2073
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x57

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x58

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x59

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2528
    const/16 v1, 0x64

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2540
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v1, v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2528
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2563
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 2388
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2390
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2398
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2395
    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2396
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    .line 965
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 966
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 975
    :goto_0
    return v0

    .line 967
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 975
    const/4 v0, 0x0

    goto :goto_0

    .line 968
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 969
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 970
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 971
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 973
    :pswitch_4
    const/16 v0, 0x3b

    goto :goto_0

    .line 967
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 957
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 959
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, prependPlus:Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 884
    .local v1, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    if-ge p2, v3, :cond_0

    .line 885
    const-string v3, ""

    .line 907
    :goto_0
    return-object v3

    .line 889
    :cond_0
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x90

    if-ne v3, v4, :cond_1

    .line 890
    const/4 v0, 0x1

    .line 893
    :cond_1
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-static {v1, p0, v3, v4}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 896
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 898
    const-string v3, ""

    goto :goto_0

    .line 901
    :cond_2
    if-eqz v0, :cond_3

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, ret:Ljava/lang/StringBuilder;
    move-object v1, v2

    .line 907
    .end local v2           #ret:Ljava/lang/StringBuilder;
    .restart local v1       #ret:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 2111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2112
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2114
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2116
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2117
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2123
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormat"

    .prologue
    const/4 v7, 0x1

    .line 2155
    move-object v3, p0

    .line 2158
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2162
    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    .line 2164
    const/4 v2, 0x0

    .line 2165
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 2168
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2175
    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2177
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2181
    if-nez v3, :cond_3

    .line 2182
    move-object v3, v1

    .line 2193
    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2194
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2195
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2198
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_5

    .line 2199
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2202
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2214
    .end local v0           #dialableIndex:I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object p0, v3

    .line 2222
    .end local p0
    :goto_3
    return-object p0

    .line 2184
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    .restart local p0
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2190
    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2207
    .restart local v0       #dialableIndex:I
    :cond_5
    if-gez v0, :cond_6

    .line 2208
    const-string v2, ""

    .line 2210
    :cond_6
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2219
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_7
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static charToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 981
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 982
    add-int/lit8 v0, p0, -0x30

    .line 993
    :goto_0
    return v0

    .line 983
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 984
    const/16 v0, 0xa

    goto :goto_0

    .line 985
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 986
    const/16 v0, 0xb

    goto :goto_0

    .line 987
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 988
    const/16 v0, 0xc

    goto :goto_0

    .line 989
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 990
    const/16 v0, 0xd

    goto :goto_0

    .line 992
    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    .line 993
    const/16 v0, 0xe

    goto :goto_0

    .line 996
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v1, 0x0

    .line 2691
    const/4 v0, 0x0

    .line 2692
    .local v0, trunk_prefix_was_read:Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 2693
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2694
    if-eqz v0, :cond_0

    .line 2709
    :goto_1
    return v1

    .line 2700
    :cond_0
    const/4 v0, 0x1

    .line 2706
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2702
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2709
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 489
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 496
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "a"
    .parameter "b"

    .prologue
    .line 517
    const/4 v8, 0x0

    .line 518
    .local v8, numNonDialableCharsInA:I
    const/4 v9, 0x0

    .line 520
    .local v9, numNonDialableCharsInB:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v11, 0x1

    .line 612
    :goto_0
    return v11

    .line 520
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 523
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 526
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 527
    .local v4, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 528
    .local v5, ib:I
    const/4 v6, 0x0

    .line 530
    .local v6, matched:I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 532
    const/4 v10, 0x0

    .line 534
    .local v10, skipCmp:Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 536
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_6

    .line 537
    add-int/lit8 v4, v4, -0x1

    .line 538
    const/4 v10, 0x1

    .line 539
    add-int/lit8 v8, v8, 0x1

    .line 542
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 544
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_7

    .line 545
    add-int/lit8 v5, v5, -0x1

    .line 546
    const/4 v10, 0x1

    .line 547
    add-int/lit8 v9, v9, 0x1

    .line 550
    :cond_7
    if-nez v10, :cond_5

    .line 551
    if-eq v1, v0, :cond_9

    const/16 v11, 0x4e

    if-eq v0, v11, :cond_9

    const/16 v11, 0x4e

    if-eq v1, v11, :cond_9

    .line 559
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v10           #skipCmp:Z
    :cond_8
    const/4 v7, 0x0

    .line 563
    .local v7, minMatchLen:I
    const/16 v7, 0xb

    .line 565
    if-ge v6, v7, :cond_b

    .line 566
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v8

    .line 567
    .local v2, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v9

    .line 572
    .local v3, effectiveBLen:I
    if-ne v2, v3, :cond_a

    if-ne v2, v6, :cond_a

    .line 573
    const/4 v11, 0x1

    goto :goto_0

    .line 554
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    .end local v7           #minMatchLen:I
    .restart local v0       #ca:C
    .restart local v1       #cb:C
    .restart local v10       #skipCmp:Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 576
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v10           #skipCmp:Z
    .restart local v2       #effectiveALen:I
    .restart local v3       #effectiveBLen:I
    .restart local v7       #minMatchLen:I
    :cond_a
    const/4 v11, 0x0

    goto :goto_0

    .line 580
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_b
    if-lt v6, v7, :cond_d

    if-ltz v4, :cond_c

    if-gez v5, :cond_d

    .line 581
    :cond_c
    const/4 v11, 0x1

    goto :goto_0

    .line 594
    :cond_d
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 597
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 600
    :cond_e
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 603
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 606
    :cond_f
    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 609
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 612
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 628
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 629
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 766
    :goto_0
    return v18

    .line 629
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 631
    const/16 v18, 0x0

    goto :goto_0

    .line 634
    :cond_3
    const/4 v10, 0x0

    .line 635
    .local v10, forwardIndexA:I
    const/4 v11, 0x0

    .line 637
    .local v11, forwardIndexB:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 639
    .local v6, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 641
    .local v7, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 642
    .local v5, bothHasCountryCallingCode:Z
    const/4 v13, 0x1

    .line 643
    .local v13, okToIgnorePrefix:Z
    const/16 v16, 0x0

    .line 644
    .local v16, trunkPrefixIsOmittedA:Z
    const/16 v17, 0x0

    .line 645
    .local v17, trunkPrefixIsOmittedB:Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 646
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 648
    const/16 v18, 0x0

    goto :goto_0

    .line 652
    :cond_4
    const/4 v13, 0x0

    .line 653
    const/4 v5, 0x1

    .line 654
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 655
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 681
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 682
    .local v3, backwardIndexA:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 683
    .local v4, backwardIndexB:I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 684
    const/4 v14, 0x0

    .line 685
    .local v14, skip_compare:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 686
    .local v8, chA:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 687
    .local v9, chB:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 688
    add-int/lit8 v3, v3, -0x1

    .line 689
    const/4 v14, 0x1

    .line 691
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 692
    add-int/lit8 v4, v4, -0x1

    .line 693
    const/4 v14, 0x1

    .line 696
    :cond_8
    if-nez v14, :cond_6

    .line 697
    if-eq v8, v9, :cond_e

    .line 698
    const/16 v18, 0x0

    goto :goto_0

    .line 656
    .end local v3           #backwardIndexA:I
    .end local v4           #backwardIndexB:I
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 659
    const/4 v13, 0x0

    goto :goto_1

    .line 661
    :cond_a
    if-eqz v6, :cond_c

    .line 662
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 670
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 671
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 664
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 665
    .local v15, tmp:I
    if-ltz v15, :cond_b

    .line 666
    move v10, v15

    .line 667
    const/16 v16, 0x1

    goto :goto_3

    .line 673
    .end local v15           #tmp:I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 674
    .restart local v15       #tmp:I
    if-ltz v15, :cond_5

    .line 675
    move v11, v15

    .line 676
    const/16 v17, 0x1

    goto :goto_1

    .line 700
    .end local v15           #tmp:I
    .restart local v3       #backwardIndexA:I
    .restart local v4       #backwardIndexB:I
    .restart local v8       #chA:C
    .restart local v9       #chB:C
    .restart local v14       #skip_compare:Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 701
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 705
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_f
    if-eqz v13, :cond_17

    .line 706
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 708
    :cond_11
    if-eqz p2, :cond_12

    .line 718
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 720
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 723
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 725
    :cond_15
    if-eqz p2, :cond_16

    .line 726
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 728
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 741
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 742
    .local v12, maybeNamp:Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 743
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 744
    .restart local v8       #chA:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 745
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 746
    const/4 v12, 0x0

    .line 751
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 752
    goto :goto_4

    .line 741
    .end local v8           #chA:C
    .end local v12           #maybeNamp:Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 748
    .restart local v8       #chA:C
    .restart local v12       #maybeNamp:Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 753
    .end local v8           #chA:C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 754
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 755
    .restart local v9       #chB:C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 756
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 757
    const/4 v12, 0x0

    .line 762
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 763
    goto :goto_5

    .line 759
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 766
    .end local v9           #chB:C
    .end local v12           #maybeNamp:Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 374
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 2026
    if-nez p0, :cond_1

    .line 2042
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2029
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2030
    .local v2, len:I
    if-eqz v2, :cond_0

    .line 2034
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2036
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2037
    aget-char v0, v3, v1

    .line 2039
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2036
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2042
    .end local v0           #c:C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 385
    const/4 v4, 0x0

    .line 400
    :goto_0
    return-object v4

    .line 387
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 388
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 391
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 393
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    const/16 v0, 0x2c

    .line 398
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    const/16 v0, 0x3b

    goto :goto_2

    .line 400
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    const/16 v7, 0x2b

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 2966
    if-nez p0, :cond_1

    .line 2967
    const/4 p0, 0x0

    .line 3002
    .end local p0
    .local v0, m:Ljava/util/regex/Matcher;
    .local v1, p:Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object p0

    .line 2970
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .restart local p0
    :cond_1
    const-string v2, "*31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "#31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2971
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Start with *31# or #31#, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2972
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2973
    :cond_3
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2975
    const-string v2, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2976
    .restart local v1       #p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2977
    .restart local v0       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2978
    const-string v2, ""

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern1, return empty string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2982
    const-string p0, ""

    goto :goto_0

    .line 2983
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 2986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern1, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 2990
    :cond_5
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2991
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2992
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 2996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern2, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static extractGsmMmiNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/16 v8, 0x2b

    .line 2720
    if-nez p0, :cond_0

    .line 2721
    const/4 v6, 0x0

    .line 2741
    :goto_0
    return-object v6

    .line 2724
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2725
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2726
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2728
    .local v1, firstCharAdded:Z
    const/4 v5, 0x0

    .line 2730
    .local v5, starfound:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 2731
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2732
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v0, v8, :cond_1

    if-eqz v1, :cond_1

    if-ne v0, v8, :cond_3

    const/4 v6, 0x1

    if-le v2, v6, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_3

    .line 2734
    :cond_1
    const/4 v1, 0x1

    .line 2735
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2730
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2736
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2741
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "phoneNumber"

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 268
    const/4 v6, 0x0

    .line 293
    :goto_0
    return-object v6

    .line 271
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 272
    .local v3, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 275
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 277
    .local v0, c:C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 278
    .local v1, digit:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 279
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 282
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, prefix:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 286
    .end local v4           #prefix:Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 287
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 288
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    const/4 v5, 0x0

    .line 331
    :goto_0
    return-object v5

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 311
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 314
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 315
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 317
    if-eqz v1, :cond_2

    .line 314
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 320
    :cond_2
    const/4 v1, 0x1

    .line 322
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 323
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 324
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    .end local v0           #c:C
    :cond_5
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[extractNetworkPortionAlt] phoneNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 453
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 469
    :goto_0
    return-object v5

    .line 456
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 460
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 461
    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 463
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 464
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .parameter "postDialStr"

    .prologue
    .line 2372
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2373
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2374
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2378
    .end local v0           #c:C
    .end local v1           #index:I
    :goto_1
    return v1

    .line 2372
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2378
    .end local v0           #c:C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1378
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1379
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .parameter "text"

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1265
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1266
    .local v4, length:I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1274
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1277
    .local v9, saved:Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1278
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1283
    new-array v1, v13, [I

    .line 1284
    .local v1, dashPositions:[I
    const/4 v5, 0x0

    .line 1286
    .local v5, numDashes:I
    const/4 v10, 0x1

    .line 1287
    .local v10, state:I
    const/4 v7, 0x0

    .line 1288
    .local v7, numDigits:I
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v5

    .end local v5           #numDashes:I
    .local v6, numDashes:I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 1289
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1290
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 1334
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1292
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 1293
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1288
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 1306
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 1308
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1310
    :cond_5
    if-ne v10, v13, :cond_6

    .line 1312
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    .line 1317
    :goto_3
    const/4 v10, 0x1

    .line 1318
    add-int/lit8 v7, v7, 0x1

    .line 1319
    goto :goto_2

    .line 1313
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1315
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    goto :goto_3

    .line 1322
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1323
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1326
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_4
    if-nez v2, :cond_2

    .line 1328
    const/4 v10, 0x2

    move v5, v6

    .line 1329
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1339
    .end local v0           #c:C
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1341
    add-int/lit8 v5, v6, -0x1

    .line 1345
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 1346
    aget v8, v1, v2

    .line 1347
    .local v8, pos:I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1345
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1351
    .end local v8           #pos:I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1352
    .local v3, len:I
    :goto_6
    if-lez v3, :cond_0

    .line 1353
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1354
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1355
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3           #len:I
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_a
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_4

    .end local v5           #numDashes:I
    .restart local v0       #c:C
    .restart local v6       #numDashes:I
    :cond_b
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_3

    .line 1290
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 1175
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1176
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1177
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1192
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1193
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1194
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1445
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, p0

    .line 1456
    :goto_0
    return-object v1

    .line 1449
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1450
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1452
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1453
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1454
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"
    .parameter "phoneNumberE164"
    .parameter "defaultCountryIso"

    .prologue
    .line 1481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1482
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1483
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1505
    .end local p0
    :goto_1
    return-object p0

    .line 1482
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1489
    .local v5, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 1494
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1495
    .local v2, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1496
    .local v3, regionCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 1499
    move-object p2, v3

    .line 1504
    .end local v2           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3           #regionCode:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1505
    .local v4, result:Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4           #result:Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 1501
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1219
    move v0, p1

    .line 1221
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1222
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1223
    const/4 v0, 0x1

    .line 1232
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1243
    :goto_1
    return-void

    .line 1224
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1226
    const/4 v0, 0x2

    goto :goto_0

    .line 1228
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1234
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1237
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1240
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1416
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1417
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1419
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1420
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1425
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v1

    .line 1423
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2227
    const/4 v0, 0x0

    .line 2228
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2230
    const-string v0, "011"

    .line 2232
    :cond_0
    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 1205
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .parameter "country"

    .prologue
    .line 2245
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2246
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2247
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2248
    const/4 v2, 0x1

    .line 2254
    :goto_1
    return v2

    .line 2246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2251
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2252
    const/4 v2, 0x2

    goto :goto_1

    .line 2254
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "countryIso"

    .prologue
    .line 3119
    if-nez p0, :cond_1

    .line 3120
    const-string v1, ""

    .line 3133
    :cond_0
    :goto_0
    return-object v1

    .line 3123
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 3124
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {v2, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3125
    .local v0, metadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_2

    .line 3126
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 3127
    .local v1, prefix:Ljava/lang/String;
    const-string/jumbo v3, "tw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3128
    const-string v1, "0(?:0[25679] | 16 | 17 | 19)"

    goto :goto_0

    .line 3133
    .end local v1           #prefix:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 198
    const/4 v9, 0x0

    .line 200
    .local v9, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sip"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 252
    :cond_1
    :goto_0
    return-object v3

    .line 210
    :cond_2
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    const-string/jumbo v0, "persist.radio.default_sim"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 214
    .local v12, simId:I
    const-string/jumbo v0, "simId"

    invoke-virtual {p0, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 217
    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 218
    .local v8, iTel:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v8, v12}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 219
    .end local v8           #iTel:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 224
    .end local v12           #simId:I
    :cond_3
    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, type:Ljava/lang/String;
    const/4 v10, 0x0

    .line 232
    .local v10, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    const-string/jumbo v10, "number"

    .line 239
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v10, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 242
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 244
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 248
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v3, v9

    .line 252
    goto :goto_0

    .line 235
    .end local v7           #c:Landroid/database/Cursor;
    :cond_7
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    const-string v10, "data1"

    goto :goto_1

    .line 248
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 802
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 806
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 2328
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2329
    .local v0, delimiterIndex:I
    if-gez v0, :cond_0

    .line 2330
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2332
    :cond_0
    if-gez v0, :cond_1

    .line 2333
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2337
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .parameter "a"

    .prologue
    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 431
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 432
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 434
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 436
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 437
    add-int/lit8 v4, v0, -0x1

    .line 439
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 913
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 917
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 919
    .local v1, c:C
    if-nez v1, :cond_1

    .line 946
    .end local v1           #c:C
    :cond_0
    return-void

    .line 922
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 931
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 933
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 938
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 939
    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 815
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 828
    :goto_0
    return-object v5

    .line 817
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 818
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 820
    .local v2, length:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    move v4, v2

    .line 821
    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 823
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 825
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 828
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 143
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    .line 3170
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 3171
    :cond_0
    const/4 v4, 0x0

    .line 3183
    :cond_1
    :goto_0
    return v4

    .line 3174
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3175
    .local v1, number:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3176
    .local v4, result:Z
    const-string v5, "cn"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3177
    const-string v3, "[1-9]{1}[0-9]{2,7}"

    .line 3178
    .local v3, patternString:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3179
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3180
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 2546
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 149
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1031
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1032
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1033
    const/4 v2, 0x0

    .line 1036
    :goto_1
    return v2

    .line 1031
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isDomesticOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x0

    .line 3145
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v4, v5

    .line 3158
    :cond_1
    :goto_0
    return v4

    .line 3149
    :cond_2
    const/4 v4, 0x1

    .line 3150
    .local v4, result:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3151
    .local v1, number:Ljava/lang/String;
    const-string v6, "cn"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "tw"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3153
    :cond_3
    const-string v3, "[1-9]{1}[0-9]{2,5}"

    .line 3154
    .local v3, patternString:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3155
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3156
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 13
    .parameter "number"

    .prologue
    .line 1603
    const-string v10, "PhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[isEmergencyNumber] number: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v9, 0x0

    .line 1606
    .local v9, plusNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1608
    .local v7, numberPlus:Ljava/lang/String;
    if-nez p0, :cond_0

    const/4 v10, 0x0

    .line 1716
    :goto_0
    return v10

    .line 1617
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1618
    const/4 v10, 0x0

    goto :goto_0

    .line 1623
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1628
    const-string/jumbo v10, "ril.ecclist"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1629
    .local v8, numbers:Ljava/lang/String;
    const-string v10, "PhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[isEmergencyNumber] ril.ecclist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1633
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v2, v0, v5

    .line 1634
    .local v2, emergencyNum:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1635
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1637
    :cond_2
    const-string v10, "PhoneNumberUtils"

    const-string v11, "[isEmergencyNumber] ril.ecclist: return true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/4 v10, 0x1

    goto :goto_0

    .line 1633
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1644
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #emergencyNum:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_4
    const-string/jumbo v10, "ril.ecclist2"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1645
    const-string v10, "PhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[isEmergencyNumber] ril.ecclist2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1649
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v2, v0, v5

    .line 1650
    .restart local v2       #emergencyNum:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1651
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1653
    :cond_5
    const-string v10, "PhoneNumberUtils"

    const-string v11, "[isEmergencyNumber] ril.ecclist2: return true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1649
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1661
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #emergencyNum:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_7
    const-string/jumbo v10, "ro.ril.ecclist"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1662
    const-string v10, "PhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[isEmergencyNumber] ro.ril.ecclist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1666
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_a

    aget-object v2, v0, v5

    .line 1667
    .restart local v2       #emergencyNum:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1668
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1670
    :cond_8
    const-string v10, "PhoneNumberUtils"

    const-string v11, "[isEmergencyNumber] ro.ril.ecclist: return true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1666
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1678
    .end local v2           #emergencyNum:Ljava/lang/String;
    :cond_a
    sget-object v10, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v10, p0, v9, v7}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isCustomizedEmergencyNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1680
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1683
    :cond_b
    const-string v10, "PhoneNumberUtils"

    const-string v11, "[isEmergencyNumber] ro.ril.ecclist: return false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_c
    const/16 v1, 0xa

    .line 1699
    .local v1, eccNo:I
    const/16 v10, 0xa

    new-array v3, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "112"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const-string v11, "911"

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const-string v11, "000"

    aput-object v11, v3, v10

    const/4 v10, 0x3

    const-string v11, "08"

    aput-object v11, v3, v10

    const/4 v10, 0x4

    const-string v11, "110"

    aput-object v11, v3, v10

    const/4 v10, 0x5

    const-string v11, "118"

    aput-object v11, v3, v10

    const/4 v10, 0x6

    const-string v11, "119"

    aput-object v11, v3, v10

    const/4 v10, 0x7

    const-string v11, "999"

    aput-object v11, v3, v10

    const/16 v10, 0x8

    const-string v11, "122"

    aput-object v11, v3, v10

    const/16 v10, 0x9

    const-string v11, "120"

    aput-object v11, v3, v10

    .line 1701
    .local v3, emergencyNumList:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    const/16 v10, 0xa

    if-ge v4, v10, :cond_f

    .line 1702
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1703
    aget-object v10, v3, v4

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1705
    :cond_d
    const-string v10, "PhoneNumberUtils"

    const-string v11, "[isEmergencyNumber] no ecclist: return true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1701
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1712
    :cond_f
    sget-object v10, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v10, p0, v9, v7}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isCustomizedEmergencyNumberExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1713
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1716
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 1783
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "useExactMatch"

    .prologue
    .line 1834
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "useExactMatch"

    .prologue
    .line 1768
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1022
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    const/4 v1, 0x0

    .line 1027
    :goto_0
    return v1

    .line 1026
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1027
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 137
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIdleSsString(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialString"

    .prologue
    const/4 v11, 0x2

    .line 2860
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isIdleSsString(): dialString = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2862
    .local v4, newDialString:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2864
    .local v3, networkPortion:Ljava/lang/String;
    const-string v8, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 2867
    .local v6, sPatternSuppService:Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 2869
    .local v5, ret:Z
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2871
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2872
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2873
    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 2874
    .local v7, sc:Ljava/lang/String;
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 2875
    .local v1, dialNumber:Ljava/lang/String;
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dialNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    if-eqz v7, :cond_2

    const-string v8, "31"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    const-string v8, "*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 2877
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is temporary CLIR"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #dialNumber:Ljava/lang/String;
    .end local v7           #sc:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isIdleSsString: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    return v5

    .line 2879
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #dialNumber:Ljava/lang/String;
    .restart local v7       #sc:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 2881
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #dialNumber:Ljava/lang/String;
    .end local v7           #sc:Ljava/lang/String;
    :cond_3
    const-string v8, "#"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2882
    const/4 v5, 0x1

    goto :goto_0

    .line 2883
    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v11, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-eq v8, v9, :cond_1

    :cond_5
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "00"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2885
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isIncallSsString(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 2894
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 1918
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .parameter "number"
    .parameter "context"
    .parameter "useExactMatch"

    .prologue
    .line 1972
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 1975
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1976
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, countryIso:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 1978
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1979
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1980
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 2262
    const/4 v2, 0x0

    .line 2263
    .local v2, retVal:Z
    if-eqz p0, :cond_2

    .line 2264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2265
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2267
    const/4 v2, 0x1

    .line 2268
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2269
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2270
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2271
    const/4 v2, 0x0

    .line 2280
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 2268
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2278
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 161
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1040
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1041
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1042
    const/4 v2, 0x0

    .line 1045
    :goto_1
    return v2

    .line 1040
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 2287
    const/4 v1, 0x0

    .line 2288
    .local v1, retVal:Z
    if-eqz p0, :cond_1

    .line 2289
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2290
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2291
    const/4 v1, 0x1

    .line 2296
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2294
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 175
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 1744
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 1810
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 1946
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 155
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 186
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 14
    .parameter "dialString"

    .prologue
    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2905
    const/4 v2, 0x0

    .line 2906
    .local v2, simState:I
    const/4 v3, 0x0

    .line 2908
    .local v3, simState2:I
    const/4 v6, 0x0

    .line 2909
    .local v6, tel:Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 2910
    .local v0, data:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 2911
    .local v1, data2:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 2912
    .local v4, ss:Landroid/telephony/ServiceState;
    const/4 v5, 0x0

    .line 2913
    .local v5, ss2:Landroid/telephony/ServiceState;
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 2915
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 2917
    .local v7, telManager:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_2

    .line 2920
    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v6, v10}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2921
    const/4 v10, 0x1

    invoke-interface {v6, v10}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2922
    if-eqz v0, :cond_0

    .line 2923
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 2925
    :cond_0
    if-eqz v1, :cond_1

    .line 2926
    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 2929
    :cond_1
    if-eqz v7, :cond_2

    .line 2930
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v2

    .line 2931
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2947
    :cond_2
    :goto_0
    const-string v10, "PhoneNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isSpecialEmergencyNumber() dialString: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    if-eq v13, v2, :cond_3

    if-ne v13, v3, :cond_8

    .line 2951
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_8

    .line 2954
    :cond_5
    const-string v10, "110"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "119"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "000"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "08"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "118"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "122"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "120"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    move v8, v9

    .line 2961
    :cond_7
    :goto_1
    return v8

    .line 2960
    :cond_8
    const-string v9, "PhoneNumberUtils"

    const-string v10, "isSpecialEmergencyNumber() return false: "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2943
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private static isSpecialMmiNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 3276
    const-string v2, "[0-5]{1}|[1-2]{1}[1-9]{1}"

    .line 3279
    .local v2, patternString:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3280
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3281
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 170
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 180
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2236
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2237
    const/4 v0, 0x1

    .line 2239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2312
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidNationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 3194
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v6, v7

    .line 3265
    :cond_1
    :goto_0
    return v6

    .line 3198
    :cond_2
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isValidNationalNumber]countryIso: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", phonenumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    const-string v8, "0"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3203
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isValidNationalNumber] cut \'0\' - phonenumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    :cond_3
    const/4 v6, 0x0

    .line 3207
    .local v6, result:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3211
    .local v4, number:Ljava/lang/String;
    const/16 v8, 0x153

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "10"

    aput-object v8, v0, v7

    const-string v8, "21"

    aput-object v8, v0, v11

    const/4 v8, 0x2

    const-string v9, "22"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "23"

    aput-object v9, v0, v8

    const/4 v8, 0x4

    const-string v9, "24"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    const-string v9, "25"

    aput-object v9, v0, v8

    const/4 v8, 0x6

    const-string v9, "26"

    aput-object v9, v0, v8

    const/4 v8, 0x7

    const-string v9, "27"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    const-string v9, "28"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    const-string v9, "29"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    const-string v9, "20"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "311"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    const-string v9, "312"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    const-string v9, "313"

    aput-object v9, v0, v8

    const/16 v8, 0xe

    const-string v9, "314"

    aput-object v9, v0, v8

    const/16 v8, 0xf

    const-string v9, "315"

    aput-object v9, v0, v8

    const/16 v8, 0x10

    const-string v9, "316"

    aput-object v9, v0, v8

    const/16 v8, 0x11

    const-string v9, "317"

    aput-object v9, v0, v8

    const/16 v8, 0x12

    const-string v9, "318"

    aput-object v9, v0, v8

    const/16 v8, 0x13

    const-string v9, "319"

    aput-object v9, v0, v8

    const/16 v8, 0x14

    const-string v9, "310"

    aput-object v9, v0, v8

    const/16 v8, 0x15

    const-string v9, "335"

    aput-object v9, v0, v8

    const/16 v8, 0x16

    const-string v9, "349"

    aput-object v9, v0, v8

    const/16 v8, 0x17

    const-string v9, "351"

    aput-object v9, v0, v8

    const/16 v8, 0x18

    const-string v9, "352"

    aput-object v9, v0, v8

    const/16 v8, 0x19

    const-string v9, "353"

    aput-object v9, v0, v8

    const/16 v8, 0x1a

    const-string v9, "354"

    aput-object v9, v0, v8

    const/16 v8, 0x1b

    const-string v9, "355"

    aput-object v9, v0, v8

    const/16 v8, 0x1c

    const-string v9, "356"

    aput-object v9, v0, v8

    const/16 v8, 0x1d

    const-string v9, "357"

    aput-object v9, v0, v8

    const/16 v8, 0x1e

    const-string v9, "358"

    aput-object v9, v0, v8

    const/16 v8, 0x1f

    const-string v9, "350"

    aput-object v9, v0, v8

    const/16 v8, 0x20

    const-string v9, "371"

    aput-object v9, v0, v8

    const/16 v8, 0x21

    const-string v9, "372"

    aput-object v9, v0, v8

    const/16 v8, 0x22

    const-string v9, "373"

    aput-object v9, v0, v8

    const/16 v8, 0x23

    const-string v9, "374"

    aput-object v9, v0, v8

    const/16 v8, 0x24

    const-string v9, "375"

    aput-object v9, v0, v8

    const/16 v8, 0x25

    const-string v9, "376"

    aput-object v9, v0, v8

    const/16 v8, 0x26

    const-string v9, "377"

    aput-object v9, v0, v8

    const/16 v8, 0x27

    const-string v9, "378"

    aput-object v9, v0, v8

    const/16 v8, 0x28

    const-string v9, "379"

    aput-object v9, v0, v8

    const/16 v8, 0x29

    const-string v9, "370"

    aput-object v9, v0, v8

    const/16 v8, 0x2a

    const-string v9, "391"

    aput-object v9, v0, v8

    const/16 v8, 0x2b

    const-string v9, "392"

    aput-object v9, v0, v8

    const/16 v8, 0x2c

    const-string v9, "393"

    aput-object v9, v0, v8

    const/16 v8, 0x2d

    const-string v9, "394"

    aput-object v9, v0, v8

    const/16 v8, 0x2e

    const-string v9, "395"

    aput-object v9, v0, v8

    const/16 v8, 0x2f

    const-string v9, "396"

    aput-object v9, v0, v8

    const-string v8, "397"

    aput-object v8, v0, v12

    const/16 v8, 0x31

    const-string v9, "398"

    aput-object v9, v0, v8

    const/16 v8, 0x32

    const-string v9, "411"

    aput-object v9, v0, v8

    const/16 v8, 0x33

    const-string v9, "412"

    aput-object v9, v0, v8

    const/16 v8, 0x34

    const-string v9, "414"

    aput-object v9, v0, v8

    const/16 v8, 0x35

    const-string v9, "415"

    aput-object v9, v0, v8

    const/16 v8, 0x36

    const-string v9, "416"

    aput-object v9, v0, v8

    const/16 v8, 0x37

    const-string v9, "417"

    aput-object v9, v0, v8

    const/16 v8, 0x38

    const-string v9, "418"

    aput-object v9, v0, v8

    const/16 v8, 0x39

    const-string v9, "419"

    aput-object v9, v0, v8

    const/16 v8, 0x3a

    const-string v9, "421"

    aput-object v9, v0, v8

    const/16 v8, 0x3b

    const-string v9, "427"

    aput-object v9, v0, v8

    const/16 v8, 0x3c

    const-string v9, "429"

    aput-object v9, v0, v8

    const/16 v8, 0x3d

    const-string v9, "431"

    aput-object v9, v0, v8

    const/16 v8, 0x3e

    const-string v9, "432"

    aput-object v9, v0, v8

    const/16 v8, 0x3f

    const-string v9, "433"

    aput-object v9, v0, v8

    const/16 v8, 0x40

    const-string v9, "434"

    aput-object v9, v0, v8

    const/16 v8, 0x41

    const-string v9, "435"

    aput-object v9, v0, v8

    const/16 v8, 0x42

    const-string v9, "436"

    aput-object v9, v0, v8

    const/16 v8, 0x43

    const-string v9, "437"

    aput-object v9, v0, v8

    const/16 v8, 0x44

    const-string v9, "438"

    aput-object v9, v0, v8

    const/16 v8, 0x45

    const-string v9, "439"

    aput-object v9, v0, v8

    const/16 v8, 0x46

    const-string v9, "451"

    aput-object v9, v0, v8

    const/16 v8, 0x47

    const-string v9, "452"

    aput-object v9, v0, v8

    const/16 v8, 0x48

    const-string v9, "453"

    aput-object v9, v0, v8

    const/16 v8, 0x49

    const-string v9, "454"

    aput-object v9, v0, v8

    const/16 v8, 0x4a

    const-string v9, "455"

    aput-object v9, v0, v8

    const/16 v8, 0x4b

    const-string v9, "456"

    aput-object v9, v0, v8

    const/16 v8, 0x4c

    const-string v9, "457"

    aput-object v9, v0, v8

    const/16 v8, 0x4d

    const-string v9, "458"

    aput-object v9, v0, v8

    const/16 v8, 0x4e

    const-string v9, "459"

    aput-object v9, v0, v8

    const/16 v8, 0x4f

    const-string v9, "464"

    aput-object v9, v0, v8

    const/16 v8, 0x50

    const-string v9, "467"

    aput-object v9, v0, v8

    const/16 v8, 0x51

    const-string v9, "468"

    aput-object v9, v0, v8

    const/16 v8, 0x52

    const-string v9, "469"

    aput-object v9, v0, v8

    const/16 v8, 0x53

    const-string v9, "471"

    aput-object v9, v0, v8

    const/16 v8, 0x54

    const-string v9, "472"

    aput-object v9, v0, v8

    const/16 v8, 0x55

    const-string v9, "473"

    aput-object v9, v0, v8

    const/16 v8, 0x56

    const-string v9, "474"

    aput-object v9, v0, v8

    const/16 v8, 0x57

    const-string v9, "475"

    aput-object v9, v0, v8

    const/16 v8, 0x58

    const-string v9, "476"

    aput-object v9, v0, v8

    const/16 v8, 0x59

    const-string v9, "477"

    aput-object v9, v0, v8

    const/16 v8, 0x5a

    const-string v9, "478"

    aput-object v9, v0, v8

    const/16 v8, 0x5b

    const-string v9, "479"

    aput-object v9, v0, v8

    const/16 v8, 0x5c

    const-string v9, "470"

    aput-object v9, v0, v8

    const/16 v8, 0x5d

    const-string v9, "482"

    aput-object v9, v0, v8

    const/16 v8, 0x5e

    const-string v9, "483"

    aput-object v9, v0, v8

    const/16 v8, 0x5f

    const-string v9, "511"

    aput-object v9, v0, v8

    const/16 v8, 0x60

    const-string v9, "512"

    aput-object v9, v0, v8

    const/16 v8, 0x61

    const-string v9, "513"

    aput-object v9, v0, v8

    const/16 v8, 0x62

    const-string v9, "514"

    aput-object v9, v0, v8

    const/16 v8, 0x63

    const-string v9, "515"

    aput-object v9, v0, v8

    const/16 v8, 0x64

    const-string v9, "516"

    aput-object v9, v0, v8

    const/16 v8, 0x65

    const-string v9, "517"

    aput-object v9, v0, v8

    const/16 v8, 0x66

    const-string v9, "518"

    aput-object v9, v0, v8

    const/16 v8, 0x67

    const-string v9, "519"

    aput-object v9, v0, v8

    const/16 v8, 0x68

    const-string v9, "510"

    aput-object v9, v0, v8

    const/16 v8, 0x69

    const-string v9, "523"

    aput-object v9, v0, v8

    const/16 v8, 0x6a

    const-string v9, "527"

    aput-object v9, v0, v8

    const/16 v8, 0x6b

    const-string v9, "531"

    aput-object v9, v0, v8

    const/16 v8, 0x6c

    const-string v9, "532"

    aput-object v9, v0, v8

    const/16 v8, 0x6d

    const-string v9, "533"

    aput-object v9, v0, v8

    const/16 v8, 0x6e

    const-string v9, "534"

    aput-object v9, v0, v8

    const/16 v8, 0x6f

    const-string v9, "535"

    aput-object v9, v0, v8

    const/16 v8, 0x70

    const-string v9, "536"

    aput-object v9, v0, v8

    const/16 v8, 0x71

    const-string v9, "537"

    aput-object v9, v0, v8

    const/16 v8, 0x72

    const-string v9, "538"

    aput-object v9, v0, v8

    const/16 v8, 0x73

    const-string v9, "539"

    aput-object v9, v0, v8

    const/16 v8, 0x74

    const-string v9, "530"

    aput-object v9, v0, v8

    const/16 v8, 0x75

    const-string v9, "543"

    aput-object v9, v0, v8

    const/16 v8, 0x76

    const-string v9, "546"

    aput-object v9, v0, v8

    const/16 v8, 0x77

    const-string v9, "631"

    aput-object v9, v0, v8

    const/16 v8, 0x78

    const-string v9, "632"

    aput-object v9, v0, v8

    const/16 v8, 0x79

    const-string v9, "633"

    aput-object v9, v0, v8

    const/16 v8, 0x7a

    const-string v9, "634"

    aput-object v9, v0, v8

    const/16 v8, 0x7b

    const-string v9, "635"

    aput-object v9, v0, v8

    const/16 v8, 0x7c

    const-string v9, "551"

    aput-object v9, v0, v8

    const/16 v8, 0x7d

    const-string v9, "552"

    aput-object v9, v0, v8

    const/16 v8, 0x7e

    const-string v9, "553"

    aput-object v9, v0, v8

    const/16 v8, 0x7f

    const-string v9, "554"

    aput-object v9, v0, v8

    const/16 v8, 0x80

    const-string v9, "555"

    aput-object v9, v0, v8

    const/16 v8, 0x81

    const-string v9, "555"

    aput-object v9, v0, v8

    const/16 v8, 0x82

    const-string v9, "556"

    aput-object v9, v0, v8

    const/16 v8, 0x83

    const-string v9, "557"

    aput-object v9, v0, v8

    const/16 v8, 0x84

    const-string v9, "558"

    aput-object v9, v0, v8

    const/16 v8, 0x85

    const-string v9, "559"

    aput-object v9, v0, v8

    const/16 v8, 0x86

    const-string v9, "561"

    aput-object v9, v0, v8

    const/16 v8, 0x87

    const-string v9, "562"

    aput-object v9, v0, v8

    const/16 v8, 0x88

    const-string v9, "563"

    aput-object v9, v0, v8

    const/16 v8, 0x89

    const-string v9, "564"

    aput-object v9, v0, v8

    const/16 v8, 0x8a

    const-string v9, "565"

    aput-object v9, v0, v8

    const/16 v8, 0x8b

    const-string v9, "566"

    aput-object v9, v0, v8

    const/16 v8, 0x8c

    const-string v9, "571"

    aput-object v9, v0, v8

    const/16 v8, 0x8d

    const-string v9, "572"

    aput-object v9, v0, v8

    const/16 v8, 0x8e

    const-string v9, "573"

    aput-object v9, v0, v8

    const/16 v8, 0x8f

    const-string v9, "574"

    aput-object v9, v0, v8

    const/16 v8, 0x90

    const-string v9, "575"

    aput-object v9, v0, v8

    const/16 v8, 0x91

    const-string v9, "576"

    aput-object v9, v0, v8

    const/16 v8, 0x92

    const-string v9, "577"

    aput-object v9, v0, v8

    const/16 v8, 0x93

    const-string v9, "578"

    aput-object v9, v0, v8

    const/16 v8, 0x94

    const-string v9, "579"

    aput-object v9, v0, v8

    const/16 v8, 0x95

    const-string v9, "570"

    aput-object v9, v0, v8

    const/16 v8, 0x96

    const-string v9, "580"

    aput-object v9, v0, v8

    const/16 v8, 0x97

    const-string v9, "591"

    aput-object v9, v0, v8

    const/16 v8, 0x98

    const-string v9, "592"

    aput-object v9, v0, v8

    const/16 v8, 0x99

    const-string v9, "593"

    aput-object v9, v0, v8

    const/16 v8, 0x9a

    const-string v9, "594"

    aput-object v9, v0, v8

    const/16 v8, 0x9b

    const-string v9, "595"

    aput-object v9, v0, v8

    const/16 v8, 0x9c

    const-string v9, "596"

    aput-object v9, v0, v8

    const/16 v8, 0x9d

    const-string v9, "597"

    aput-object v9, v0, v8

    const/16 v8, 0x9e

    const-string v9, "598"

    aput-object v9, v0, v8

    const/16 v8, 0x9f

    const-string v9, "599"

    aput-object v9, v0, v8

    const/16 v8, 0xa0

    const-string v9, "631"

    aput-object v9, v0, v8

    const/16 v8, 0xa1

    const-string v9, "632"

    aput-object v9, v0, v8

    const/16 v8, 0xa2

    const-string v9, "633"

    aput-object v9, v0, v8

    const/16 v8, 0xa3

    const-string v9, "634"

    aput-object v9, v0, v8

    const/16 v8, 0xa4

    const-string v9, "635"

    aput-object v9, v0, v8

    const/16 v8, 0xa5

    const-string v9, "660"

    aput-object v9, v0, v8

    const/16 v8, 0xa6

    const-string v9, "662"

    aput-object v9, v0, v8

    const/16 v8, 0xa7

    const-string v9, "663"

    aput-object v9, v0, v8

    const/16 v8, 0xa8

    const-string v9, "668"

    aput-object v9, v0, v8

    const/16 v8, 0xa9

    const-string v9, "691"

    aput-object v9, v0, v8

    const/16 v8, 0xaa

    const-string v9, "692"

    aput-object v9, v0, v8

    const/16 v8, 0xab

    const-string v9, "711"

    aput-object v9, v0, v8

    const/16 v8, 0xac

    const-string v9, "712"

    aput-object v9, v0, v8

    const/16 v8, 0xad

    const-string v9, "713"

    aput-object v9, v0, v8

    const/16 v8, 0xae

    const-string v9, "714"

    aput-object v9, v0, v8

    const/16 v8, 0xaf

    const-string v9, "715"

    aput-object v9, v0, v8

    const/16 v8, 0xb0

    const-string v9, "716"

    aput-object v9, v0, v8

    const/16 v8, 0xb1

    const-string v9, "717"

    aput-object v9, v0, v8

    const/16 v8, 0xb2

    const-string v9, "718"

    aput-object v9, v0, v8

    const/16 v8, 0xb3

    const-string v9, "719"

    aput-object v9, v0, v8

    const/16 v8, 0xb4

    const-string v9, "710"

    aput-object v9, v0, v8

    const/16 v8, 0xb5

    const-string v9, "722"

    aput-object v9, v0, v8

    const/16 v8, 0xb6

    const-string v9, "724"

    aput-object v9, v0, v8

    const/16 v8, 0xb7

    const-string v9, "728"

    aput-object v9, v0, v8

    const/16 v8, 0xb8

    const-string v9, "731"

    aput-object v9, v0, v8

    const/16 v8, 0xb9

    const-string v9, "734"

    aput-object v9, v0, v8

    const/16 v8, 0xba

    const-string v9, "735"

    aput-object v9, v0, v8

    const/16 v8, 0xbb

    const-string v9, "736"

    aput-object v9, v0, v8

    const/16 v8, 0xbc

    const-string v9, "737"

    aput-object v9, v0, v8

    const/16 v8, 0xbd

    const-string v9, "738"

    aput-object v9, v0, v8

    const/16 v8, 0xbe

    const-string v9, "739"

    aput-object v9, v0, v8

    const/16 v8, 0xbf

    const-string v9, "730"

    aput-object v9, v0, v8

    const/16 v8, 0xc0

    const-string v9, "743"

    aput-object v9, v0, v8

    const/16 v8, 0xc1

    const-string v9, "744"

    aput-object v9, v0, v8

    const/16 v8, 0xc2

    const-string v9, "745"

    aput-object v9, v0, v8

    const/16 v8, 0xc3

    const-string v9, "746"

    aput-object v9, v0, v8

    const/16 v8, 0xc4

    const-string v9, "750"

    aput-object v9, v0, v8

    const/16 v8, 0xc5

    const-string v9, "751"

    aput-object v9, v0, v8

    const/16 v8, 0xc6

    const-string v9, "752"

    aput-object v9, v0, v8

    const/16 v8, 0xc7

    const-string v9, "753"

    aput-object v9, v0, v8

    const/16 v8, 0xc8

    const-string v9, "754"

    aput-object v9, v0, v8

    const/16 v8, 0xc9

    const-string v9, "755"

    aput-object v9, v0, v8

    const/16 v8, 0xca

    const-string v9, "756"

    aput-object v9, v0, v8

    const/16 v8, 0xcb

    const-string v9, "757"

    aput-object v9, v0, v8

    const/16 v8, 0xcc

    const-string v9, "758"

    aput-object v9, v0, v8

    const/16 v8, 0xcd

    const-string v9, "759"

    aput-object v9, v0, v8

    const/16 v8, 0xce

    const-string v9, "760"

    aput-object v9, v0, v8

    const/16 v8, 0xcf

    const-string v9, "762"

    aput-object v9, v0, v8

    const/16 v8, 0xd0

    const-string v9, "763"

    aput-object v9, v0, v8

    const/16 v8, 0xd1

    const-string v9, "766"

    aput-object v9, v0, v8

    const/16 v8, 0xd2

    const-string v9, "768"

    aput-object v9, v0, v8

    const/16 v8, 0xd3

    const-string v9, "769"

    aput-object v9, v0, v8

    const/16 v8, 0xd4

    const-string v9, "660"

    aput-object v9, v0, v8

    const/16 v8, 0xd5

    const-string v9, "662"

    aput-object v9, v0, v8

    const/16 v8, 0xd6

    const-string v9, "663"

    aput-object v9, v0, v8

    const/16 v8, 0xd7

    const-string v9, "668"

    aput-object v9, v0, v8

    const/16 v8, 0xd8

    const-string v9, "771"

    aput-object v9, v0, v8

    const/16 v8, 0xd9

    const-string v9, "772"

    aput-object v9, v0, v8

    const/16 v8, 0xda

    const-string v9, "773"

    aput-object v9, v0, v8

    const/16 v8, 0xdb

    const-string v9, "774"

    aput-object v9, v0, v8

    const/16 v8, 0xdc

    const-string v9, "775"

    aput-object v9, v0, v8

    const/16 v8, 0xdd

    const-string v9, "776"

    aput-object v9, v0, v8

    const/16 v8, 0xde

    const-string v9, "777"

    aput-object v9, v0, v8

    const/16 v8, 0xdf

    const-string v9, "778"

    aput-object v9, v0, v8

    const/16 v8, 0xe0

    const-string v9, "779"

    aput-object v9, v0, v8

    const/16 v8, 0xe1

    const-string v9, "770"

    aput-object v9, v0, v8

    const/16 v8, 0xe2

    const-string v9, "791"

    aput-object v9, v0, v8

    const/16 v8, 0xe3

    const-string v9, "792"

    aput-object v9, v0, v8

    const/16 v8, 0xe4

    const-string v9, "793"

    aput-object v9, v0, v8

    const/16 v8, 0xe5

    const-string v9, "794"

    aput-object v9, v0, v8

    const/16 v8, 0xe6

    const-string v9, "795"

    aput-object v9, v0, v8

    const/16 v8, 0xe7

    const-string v9, "796"

    aput-object v9, v0, v8

    const/16 v8, 0xe8

    const-string v9, "797"

    aput-object v9, v0, v8

    const/16 v8, 0xe9

    const-string v9, "798"

    aput-object v9, v0, v8

    const/16 v8, 0xea

    const-string v9, "799"

    aput-object v9, v0, v8

    const/16 v8, 0xeb

    const-string v9, "790"

    aput-object v9, v0, v8

    const/16 v8, 0xec

    const-string v9, "701"

    aput-object v9, v0, v8

    const/16 v8, 0xed

    const-string v9, "812"

    aput-object v9, v0, v8

    const/16 v8, 0xee

    const-string v9, "813"

    aput-object v9, v0, v8

    const/16 v8, 0xef

    const-string v9, "816"

    aput-object v9, v0, v8

    const/16 v8, 0xf0

    const-string v9, "817"

    aput-object v9, v0, v8

    const/16 v8, 0xf1

    const-string v9, "818"

    aput-object v9, v0, v8

    const/16 v8, 0xf2

    const-string v9, "825"

    aput-object v9, v0, v8

    const/16 v8, 0xf3

    const-string v9, "826"

    aput-object v9, v0, v8

    const/16 v8, 0xf4

    const-string v9, "827"

    aput-object v9, v0, v8

    const/16 v8, 0xf5

    const-string v9, "831"

    aput-object v9, v0, v8

    const/16 v8, 0xf6

    const-string v9, "832"

    aput-object v9, v0, v8

    const/16 v8, 0xf7

    const-string v9, "833"

    aput-object v9, v0, v8

    const/16 v8, 0xf8

    const-string v9, "834"

    aput-object v9, v0, v8

    const/16 v8, 0xf9

    const-string v9, "835"

    aput-object v9, v0, v8

    const/16 v8, 0xfa

    const-string v9, "836"

    aput-object v9, v0, v8

    const/16 v8, 0xfb

    const-string v9, "837"

    aput-object v9, v0, v8

    const/16 v8, 0xfc

    const-string v9, "838"

    aput-object v9, v0, v8

    const/16 v8, 0xfd

    const-string v9, "839"

    aput-object v9, v0, v8

    const/16 v8, 0xfe

    const-string v9, "830"

    aput-object v9, v0, v8

    const/16 v8, 0xff

    const-string v9, "851"

    aput-object v9, v0, v8

    const/16 v8, 0x100

    const-string v9, "852"

    aput-object v9, v0, v8

    const/16 v8, 0x101

    const-string v9, "853"

    aput-object v9, v0, v8

    const/16 v8, 0x102

    const-string v9, "854"

    aput-object v9, v0, v8

    const/16 v8, 0x103

    const-string v9, "855"

    aput-object v9, v0, v8

    const/16 v8, 0x104

    const-string v9, "856"

    aput-object v9, v0, v8

    const/16 v8, 0x105

    const-string v9, "857"

    aput-object v9, v0, v8

    const/16 v8, 0x106

    const-string v9, "858"

    aput-object v9, v0, v8

    const/16 v8, 0x107

    const-string v9, "859"

    aput-object v9, v0, v8

    const/16 v8, 0x108

    const-string v9, "871"

    aput-object v9, v0, v8

    const/16 v8, 0x109

    const-string v9, "872"

    aput-object v9, v0, v8

    const/16 v8, 0x10a

    const-string v9, "873"

    aput-object v9, v0, v8

    const/16 v8, 0x10b

    const-string v9, "874"

    aput-object v9, v0, v8

    const/16 v8, 0x10c

    const-string v9, "875"

    aput-object v9, v0, v8

    const/16 v8, 0x10d

    const-string v9, "876"

    aput-object v9, v0, v8

    const/16 v8, 0x10e

    const-string v9, "877"

    aput-object v9, v0, v8

    const/16 v8, 0x10f

    const-string v9, "878"

    aput-object v9, v0, v8

    const/16 v8, 0x110

    const-string v9, "879"

    aput-object v9, v0, v8

    const/16 v8, 0x111

    const-string v9, "870"

    aput-object v9, v0, v8

    const/16 v8, 0x112

    const-string v9, "883"

    aput-object v9, v0, v8

    const/16 v8, 0x113

    const-string v9, "886"

    aput-object v9, v0, v8

    const/16 v8, 0x114

    const-string v9, "887"

    aput-object v9, v0, v8

    const/16 v8, 0x115

    const-string v9, "888"

    aput-object v9, v0, v8

    const/16 v8, 0x116

    const-string v9, "691"

    aput-object v9, v0, v8

    const/16 v8, 0x117

    const-string v9, "692"

    aput-object v9, v0, v8

    const/16 v8, 0x118

    const-string v9, "891"

    aput-object v9, v0, v8

    const/16 v8, 0x119

    const-string v9, "892"

    aput-object v9, v0, v8

    const/16 v8, 0x11a

    const-string v9, "893"

    aput-object v9, v0, v8

    const/16 v8, 0x11b

    const-string v9, "894"

    aput-object v9, v0, v8

    const/16 v8, 0x11c

    const-string v9, "895"

    aput-object v9, v0, v8

    const/16 v8, 0x11d

    const-string v9, "896"

    aput-object v9, v0, v8

    const/16 v8, 0x11e

    const-string v9, "897"

    aput-object v9, v0, v8

    const/16 v8, 0x11f

    const-string v9, "898"

    aput-object v9, v0, v8

    const/16 v8, 0x120

    const-string v9, "911"

    aput-object v9, v0, v8

    const/16 v8, 0x121

    const-string v9, "912"

    aput-object v9, v0, v8

    const/16 v8, 0x122

    const-string v9, "913"

    aput-object v9, v0, v8

    const/16 v8, 0x123

    const-string v9, "914"

    aput-object v9, v0, v8

    const/16 v8, 0x124

    const-string v9, "915"

    aput-object v9, v0, v8

    const/16 v8, 0x125

    const-string v9, "916"

    aput-object v9, v0, v8

    const/16 v8, 0x126

    const-string v9, "917"

    aput-object v9, v0, v8

    const/16 v8, 0x127

    const-string v9, "919"

    aput-object v9, v0, v8

    const/16 v8, 0x128

    const-string v9, "931"

    aput-object v9, v0, v8

    const/16 v8, 0x129

    const-string v9, "932"

    aput-object v9, v0, v8

    const/16 v8, 0x12a

    const-string v9, "933"

    aput-object v9, v0, v8

    const/16 v8, 0x12b

    const-string v9, "934"

    aput-object v9, v0, v8

    const/16 v8, 0x12c

    const-string v9, "935"

    aput-object v9, v0, v8

    const/16 v8, 0x12d

    const-string v9, "936"

    aput-object v9, v0, v8

    const/16 v8, 0x12e

    const-string v9, "937"

    aput-object v9, v0, v8

    const/16 v8, 0x12f

    const-string v9, "938"

    aput-object v9, v0, v8

    const/16 v8, 0x130

    const-string v9, "939"

    aput-object v9, v0, v8

    const/16 v8, 0x131

    const-string v9, "930"

    aput-object v9, v0, v8

    const/16 v8, 0x132

    const-string v9, "940"

    aput-object v9, v0, v8

    const/16 v8, 0x133

    const-string v9, "941"

    aput-object v9, v0, v8

    const/16 v8, 0x134

    const-string v9, "943"

    aput-object v9, v0, v8

    const/16 v8, 0x135

    const-string v9, "951"

    aput-object v9, v0, v8

    const/16 v8, 0x136

    const-string v9, "952"

    aput-object v9, v0, v8

    const/16 v8, 0x137

    const-string v9, "953"

    aput-object v9, v0, v8

    const/16 v8, 0x138

    const-string v9, "954"

    aput-object v9, v0, v8

    const/16 v8, 0x139

    const-string v9, "955"

    aput-object v9, v0, v8

    const/16 v8, 0x13a

    const-string v9, "971"

    aput-object v9, v0, v8

    const/16 v8, 0x13b

    const-string v9, "972"

    aput-object v9, v0, v8

    const/16 v8, 0x13c

    const-string v9, "973"

    aput-object v9, v0, v8

    const/16 v8, 0x13d

    const-string v9, "974"

    aput-object v9, v0, v8

    const/16 v8, 0x13e

    const-string v9, "975"

    aput-object v9, v0, v8

    const/16 v8, 0x13f

    const-string v9, "976"

    aput-object v9, v0, v8

    const/16 v8, 0x140

    const-string v9, "977"

    aput-object v9, v0, v8

    const/16 v8, 0x141

    const-string v9, "979"

    aput-object v9, v0, v8

    const/16 v8, 0x142

    const-string v9, "970"

    aput-object v9, v0, v8

    const/16 v8, 0x143

    const-string v9, "991"

    aput-object v9, v0, v8

    const/16 v8, 0x144

    const-string v9, "992"

    aput-object v9, v0, v8

    const/16 v8, 0x145

    const-string v9, "993"

    aput-object v9, v0, v8

    const/16 v8, 0x146

    const-string v9, "994"

    aput-object v9, v0, v8

    const/16 v8, 0x147

    const-string v9, "995"

    aput-object v9, v0, v8

    const/16 v8, 0x148

    const-string v9, "996"

    aput-object v9, v0, v8

    const/16 v8, 0x149

    const-string v9, "997"

    aput-object v9, v0, v8

    const/16 v8, 0x14a

    const-string v9, "998"

    aput-object v9, v0, v8

    const/16 v8, 0x14b

    const-string v9, "999"

    aput-object v9, v0, v8

    const/16 v8, 0x14c

    const-string v9, "990"

    aput-object v9, v0, v8

    const/16 v8, 0x14d

    const-string v9, "901"

    aput-object v9, v0, v8

    const/16 v8, 0x14e

    const-string v9, "902"

    aput-object v9, v0, v8

    const/16 v8, 0x14f

    const-string v9, "903"

    aput-object v9, v0, v8

    const/16 v8, 0x150

    const-string v9, "906"

    aput-object v9, v0, v8

    const/16 v8, 0x151

    const-string v9, "908"

    aput-object v9, v0, v8

    const/16 v8, 0x152

    const-string v9, "909"

    aput-object v9, v0, v8

    .line 3251
    .local v0, CHINA_AREA_PREFIXS:[Ljava/lang/String;
    const-string v8, "cn"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3252
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 3253
    .local v5, prefix:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3254
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_4

    .line 3255
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidNationalNumber = CN invalid number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3258
    :cond_4
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidNationalNumber = CN number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    const/4 v6, 0x1

    .line 3261
    goto/16 :goto_0

    .line 3252
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isValidNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    .line 3019
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[isValidNumber] countryIso: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", phoneNumber: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 3022
    :cond_0
    const/4 v15, 0x5

    .line 3109
    :cond_1
    :goto_0
    return v15

    .line 3025
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3026
    .local v11, number:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3027
    .local v10, matchResult:Z
    const/4 v4, 0x0

    .line 3028
    .local v4, areaCodeMatchResult:Z
    const/4 v15, 0x3

    .line 3029
    .local v15, result:I
    const-string v13, ""

    .line 3030
    .local v13, patternString:Ljava/lang/String;
    const-string v5, ""

    .line 3032
    .local v5, areaCodePattern:Ljava/lang/String;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v2, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "00"

    aput-object v17, v2, v16

    .line 3033
    .local v2, CHINA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v3, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "002"

    aput-object v17, v3, v16

    const/16 v16, 0x1

    const-string v17, "005"

    aput-object v17, v3, v16

    const/16 v16, 0x2

    const-string v17, "006"

    aput-object v17, v3, v16

    const/16 v16, 0x3

    const-string v17, "007"

    aput-object v17, v3, v16

    const/16 v16, 0x4

    const-string v17, "009"

    aput-object v17, v3, v16

    const/16 v16, 0x5

    const-string v17, "016"

    aput-object v17, v3, v16

    const/16 v16, 0x6

    const-string v17, "017"

    aput-object v17, v3, v16

    const/16 v16, 0x7

    const-string v17, "019"

    aput-object v17, v3, v16

    .line 3035
    .local v3, TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;
    const-string v16, "cn"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 3036
    const-string v13, "1[3-8]{1}[0-9]{1}[0-9]{8}|01[3-8]{1}[0-9]{1}[0-9]{8}|[1-9]{1}[0-9]{5,7}|11[0-9]{1}114|400[0-9]{7}|179[0-9]{8,}|"

    .line 3043
    const-string v5, "010[1-9]{1}[0-9]{7}|02[0-9]{1}[1-9]{1}[0-9]{7}|0[3-9]{1}[0-9]{2}[1-9]{1}[0-9]{6,7}|010[1-9]{1}[0-9]{2,4}|02[0-9]{1}[1-9]{1}[0-9]{2,4}|0[3-9]{1}[0-9]{2}[1-9]{1}[0-9]{2,4}|01011[0-9]{1}114|02[0-9]{1}11[0-9]{1}114|0[3-9]{1}[0-9]{2}11[0-9]{1}114|"

    .line 3054
    move-object v6, v2

    .local v6, arr$:[Ljava/lang/String;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_7

    aget-object v14, v6, v7

    .line 3055
    .local v14, prefix:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 3056
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isValidNumber = CN start with "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3054
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3061
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v14           #prefix:Ljava/lang/String;
    :cond_4
    const-string/jumbo v16, "tw"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 3062
    const-string v13, "09[0-9]{8}|0[2-8]{1}[0-9]{7,8}|"

    .line 3066
    move-object v6, v3

    .restart local v6       #arr$:[Ljava/lang/String;
    array-length v8, v6

    .restart local v8       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_2
    if-ge v7, v8, :cond_7

    aget-object v14, v6, v7

    .line 3067
    .restart local v14       #prefix:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 3068
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isValidNumber = TW start with "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3066
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3074
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v14           #prefix:Ljava/lang/String;
    :cond_6
    const/4 v15, 0x3

    goto/16 :goto_0

    .line 3077
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "[1-9]{1}[0-9]{2,4}|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "000|08"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3080
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 3081
    .local v12, p:Ljava/util/regex/Pattern;
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 3082
    .local v9, m:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    .line 3083
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "number = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", matchResult = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    if-nez v10, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_8

    .line 3087
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 3088
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 3089
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    .line 3090
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "number = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", areaCodeMatchResult = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_8
    if-nez v10, :cond_9

    if-eqz v4, :cond_d

    .line 3094
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3095
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 3096
    :cond_a
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3097
    const/4 v15, 0x2

    goto/16 :goto_0

    .line 3098
    :cond_b
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->isDomesticOnly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 3099
    const/4 v15, 0x4

    goto/16 :goto_0

    .line 3100
    :cond_c
    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->isValidNationalNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 3101
    const/4 v15, 0x5

    goto/16 :goto_0

    .line 3103
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialMmiNumber(Ljava/lang/String;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 3104
    const/4 v15, 0x6

    goto/16 :goto_0

    .line 3106
    :cond_e
    const/4 v15, 0x5

    goto/16 :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 2001
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2008
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2012
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, ex:Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isVoiceMailNumberGemini(Ljava/lang/String;I)Z
    .locals 6
    .parameter "number"
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 2841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2844
    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2845
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2852
    .local v2, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2856
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v1           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #vmNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 2846
    :catch_0
    move-exception v0

    .line 2847
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1013
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 418
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2419
    const/4 v2, 0x0

    .line 2420
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 2421
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2423
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2442
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2448
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 2425
    .restart local v0       #c:C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 2420
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2426
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2427
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2431
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2432
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2433
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2437
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2438
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2448
    .end local v0           #c:C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 2423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2458
    const/4 v2, 0x0

    .line 2459
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 2460
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2462
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2494
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2498
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 2464
    .restart local v0       #c:C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 2459
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2465
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2466
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2470
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2471
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2472
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2476
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2477
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2483
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 2484
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2489
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2490
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2498
    .end local v0           #c:C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 2462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a"
    .parameter "len"

    .prologue
    .line 2506
    const/4 v1, 0x0

    .line 2508
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2509
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2511
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 2512
    const/4 v1, 0x1

    .line 2508
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2513
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2514
    const/4 v1, 0x0

    .line 2518
    .end local v0           #c:C
    .end local v1           #found:Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 406
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 407
    if-ge p0, p1, :cond_1

    .line 413
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    move p0, p1

    .line 407
    goto :goto_0

    .line 408
    :cond_2
    if-gez p0, :cond_0

    .line 410
    if-ltz p1, :cond_3

    move p0, p1

    .line 411
    goto :goto_0

    .line 413
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1055
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1065
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 1520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1522
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 1523
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1525
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1526
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 1527
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1522
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1528
    :cond_1
    if-nez v2, :cond_2

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    .line 1529
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1530
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x7a

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    .line 1531
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1534
    .end local v0           #c:C
    .end local v1           #digit:I
    :goto_2
    return-object v5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = " sim contact support chinese character"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1084
    invoke-static {p0}, Landroid/telephony/OppoTelephonyFunction;->oppoStripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1087
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1096
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1097
    .local v6, numberLenReal:I
    move v5, v6

    .line 1098
    .local v5, numberLenEffective:I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 1099
    .local v3, hasPlus:Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1101
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1126
    :goto_1
    return-object v9

    .line 1098
    .end local v3           #hasPlus:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1103
    .restart local v3       #hasPlus:Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1104
    .local v10, resultLen:I
    const/4 v2, 0x1

    .line 1105
    .local v2, extraBytes:I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1106
    :cond_3
    add-int/2addr v10, v2

    .line 1108
    new-array v9, v10, [B

    .line 1110
    .local v9, result:[B
    const/4 v1, 0x0

    .line 1111
    .local v1, digitCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 1112
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1113
    .local v0, c:C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4

    .line 1111
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1114
    :cond_4
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v11, 0x4

    .line 1115
    .local v11, shift:I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1114
    .end local v11           #shift:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1120
    .end local v0           #c:C
    :cond_6
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1122
    :cond_7
    const/4 v7, 0x0

    .line 1123
    .local v7, offset:I
    if-eqz p1, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7           #offset:I
    .local v8, offset:I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1124
    .end local v8           #offset:I
    .restart local v7       #offset:I
    :cond_8
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    :cond_9
    const/16 v12, 0x81

    goto :goto_5
.end method

.method public static prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2775
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2776
    .local v3, retString:Ljava/lang/String;
    const-string v4, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2777
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2778
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2779
    const-string v4, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2784
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2786
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2788
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2793
    .end local v2           #ret:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2794
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2802
    .end local v2           #ret:Ljava/lang/StringBuilder;
    :cond_1
    const-string v4, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2803
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2804
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2810
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2814
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2817
    .end local v2           #ret:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2818
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 2347
    move-object v2, p0

    .line 2352
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 2355
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2356
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2358
    move-object v2, v1

    .line 2366
    .end local v1           #newStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2360
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2362
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1387
    const/4 v0, 0x0

    .line 1388
    .local v0, p:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1389
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1390
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1395
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 1546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1547
    .local v5, normalizedDigits:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 1548
    .local v1, c:C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1549
    .local v2, digit:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1550
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1547
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1552
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1555
    .end local v1           #c:C
    .end local v2           #digit:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 839
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 845
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 841
    .restart local p0
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 340
    if-nez p0, :cond_0

    .line 341
    const/4 v5, 0x0

    .line 360
    :goto_0
    return-object v5

    .line 343
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 344
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 347
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 349
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 351
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 352
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 360
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 780
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, np:Ljava/lang/String;
    const/4 v0, 0x0

    .line 787
    .local v0, minMatchLen:I
    const/16 v0, 0xb

    .line 789
    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 855
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 856
    const/16 v0, 0x91

    .line 859
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 2585
    const/4 v5, 0x0

    .line 2586
    .local v5, state:I
    const/4 v0, 0x0

    .line 2587
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2588
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2589
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2590
    .local v1, ch:C
    packed-switch v5, :pswitch_data_0

    .line 2659
    .end local v1           #ch:C
    :cond_0
    :goto_1
    return-object v6

    .line 2592
    .restart local v1       #ch:C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 2588
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2593
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 2594
    :cond_3
    if-ne v1, v8, :cond_4

    .line 2595
    if-eqz p1, :cond_0

    .line 2596
    const/16 v5, 0x8

    goto :goto_2

    .line 2600
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2606
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 2607
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 2608
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2614
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 2615
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2626
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2627
    .local v4, ret:I
    if-lez v4, :cond_c

    .line 2628
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 2629
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2630
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2632
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 2633
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 2635
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2637
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2643
    .end local v4           #ret:I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 2644
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2649
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 2650
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 2556
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2557
    add-int/lit8 v0, p0, -0x30

    .line 2559
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v3, -0x1

    .line 2672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2673
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2674
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2675
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2676
    add-int/lit8 v3, v1, 0x1

    .line 2681
    .end local v0           #ch:C
    :cond_0
    return v3

    .line 2677
    .restart local v0       #ch:C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
