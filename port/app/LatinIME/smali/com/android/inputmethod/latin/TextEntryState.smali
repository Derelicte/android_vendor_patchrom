.class public Lcom/android/inputmethod/latin/TextEntryState;
.super Ljava/lang/Object;
.source "TextEntryState.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sPreviousState:I

.field private static sState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/android/inputmethod/latin/TextEntryState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->TAG:Ljava/lang/String;

    .line 41
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 42
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sPreviousState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "typedWord"
    .parameter "actualWord"
    .parameter "separatorCode"

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoCorrection(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    const/16 v2, 0xb

    .line 82
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    if-ne v0, v2, :cond_1

    .line 83
    :cond_0
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_0
.end method

.method public static acceptedTyped(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "typedWord"

    .prologue
    .line 77
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 79
    return-void
.end method

.method public static backToAcceptedDefault(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "typedWord"

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 68
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static backspace()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 167
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 168
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 169
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoCorrectionCancelled()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    if-ne v0, v2, :cond_0

    .line 171
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_0
.end method

.method public static getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->stateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRecorrecting()Z
    .locals 2

    .prologue
    .line 198
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUndoCommit()Z
    .locals 2

    .prologue
    .line 190
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 179
    return-void
.end method

.method private static setState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 45
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sPreviousState:I

    .line 46
    sput p0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 47
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 206
    packed-switch p0, :pswitch_data_0

    .line 218
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    const-string v0, "START"

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v0, "IN_WORD"

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v0, "ACCEPTED_DEFAULT"

    goto :goto_0

    .line 210
    :pswitch_3
    const-string v0, "PICKED_SUGGESTION"

    goto :goto_0

    .line 211
    :pswitch_4
    const-string v0, "PUNCTUATION_AFTER_WORD"

    goto :goto_0

    .line 212
    :pswitch_5
    const-string v0, "PUNCTUATION_AFTER_ACCEPTED"

    goto :goto_0

    .line 213
    :pswitch_6
    const-string v0, "SPACE_AFTER_ACCEPTED"

    goto :goto_0

    .line 214
    :pswitch_7
    const-string v0, "SPACE_AFTER_PICKED"

    goto :goto_0

    .line 215
    :pswitch_8
    const-string v0, "UNDO_COMMIT"

    goto :goto_0

    .line 216
    :pswitch_9
    const-string v0, "RECORRECTING"

    goto :goto_0

    .line 217
    :pswitch_a
    const-string v0, "PICKED_RECORRECTION"

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static typedCharacter(CZII)V
    .locals 5
    .parameter "c"
    .parameter "isSeparator"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 104
    const/16 v2, 0x20

    if-ne p0, v2, :cond_1

    move v0, v1

    .line 105
    .local v0, isSpace:Z
    :goto_0
    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    packed-switch v2, :pswitch_data_0

    .line 157
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p3}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->push(CII)V

    .line 158
    if-eqz p1, :cond_a

    .line 159
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputSeparator()V

    .line 164
    :goto_2
    return-void

    .line 104
    .end local v0           #isSpace:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    .restart local v0       #isSpace:Z
    :pswitch_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 108
    :cond_2
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 116
    :pswitch_1
    if-eqz v0, :cond_3

    .line 117
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 118
    :cond_3
    if-eqz p1, :cond_4

    .line 120
    invoke-static {v4}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 122
    :cond_4
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 127
    :pswitch_2
    if-eqz v0, :cond_5

    .line 128
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 129
    :cond_5
    if-eqz p1, :cond_6

    .line 131
    invoke-static {v4}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 133
    :cond_6
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 140
    :pswitch_3
    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 141
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 143
    :cond_7
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 147
    :pswitch_4
    if-nez v0, :cond_8

    if-eqz p1, :cond_9

    .line 148
    :cond_8
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 150
    :cond_9
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 154
    :pswitch_5
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_1

    .line 161
    :cond_a
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputChar()V

    goto :goto_2

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
