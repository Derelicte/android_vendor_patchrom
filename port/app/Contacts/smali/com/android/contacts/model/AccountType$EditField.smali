.class public Lcom/android/contacts/model/AccountType$EditField;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public inputType:I

.field public longForm:Z

.field public minLines:I

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "column"
    .parameter "titleRes"

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 365
    iput p2, p0, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    .line 366
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "column"
    .parameter "titleRes"
    .parameter "inputType"

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    .line 370
    iput p3, p0, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    .line 371
    return-void
.end method


# virtual methods
.method public isMultiLine()Z
    .locals 2

    .prologue
    .line 394
    iget v0, p0, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0
    .parameter "longForm"

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    .line 385
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0
    .parameter "optional"

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    .line 375
    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0
    .parameter "shortForm"

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    .line 380
    return-object p0
.end method
