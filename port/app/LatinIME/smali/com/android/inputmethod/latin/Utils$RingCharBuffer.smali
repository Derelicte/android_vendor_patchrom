.class Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field private static sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mUsabilityStudy:Z

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 225
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 226
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 227
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    .line 228
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    .line 229
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    .line 233
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0
.end method

.method private normalize(I)I
    .locals 1
    .parameter "in"

    .prologue
    .line 246
    rem-int/lit8 v0, p1, 0x14

    .line 247
    .local v0, ret:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x14

    .end local v0           #ret:I
    :cond_0
    return v0
.end method


# virtual methods
.method public push(CII)V
    .locals 2
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    if-eqz v0, :cond_2

    .line 252
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->writeChar(CII)V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 255
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 256
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 257
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 258
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 259
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    goto :goto_0
.end method
