.class Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeArray"
.end annotation


# instance fields
.field mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

.field mLength:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 69
    return-void
.end method


# virtual methods
.method add(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;)V
    .locals 4
    .parameter "n"

    .prologue
    const/4 v3, 0x0

    .line 72
    iget v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 73
    iget v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 74
    .local v0, tempData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    if-lez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    iget v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_0
    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 79
    .end local v0           #tempData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    iget v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    aput-object p1, v1, v2

    .line 80
    return-void
.end method
