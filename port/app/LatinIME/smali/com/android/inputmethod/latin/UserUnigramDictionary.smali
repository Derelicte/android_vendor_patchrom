.class public Lcom/android/inputmethod/latin/UserUnigramDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserUnigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;
    }
.end annotation


# static fields
.field private static sOpenHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;


# instance fields
.field private mPendingWrites:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWritesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/inputmethod/latin/UserUnigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "ime"
    .parameter "locale"
    .parameter "dicTypeId"

    .prologue
    .line 88
    invoke-direct {p0, p1, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary;->mPendingWrites:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;I)V
    .locals 0
    .parameter "newWord"
    .parameter "addFrequency"

    .prologue
    .line 147
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V

    .line 112
    return-void
.end method

.method public flushPendingWrites()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public loadDictionaryAsync()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
