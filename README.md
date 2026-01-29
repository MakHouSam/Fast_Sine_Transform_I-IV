# Fast-Sine-Transform I-IV
This repository contains the MATLAB codes that can fast compute Discrete Sine Transform (DST) I-IV under matrix factorization. We consider the orthogonal DST I-IV in the form:

$$S_{N-1}^{I}=s_{n-1}^{I}(j)=\sqrt{\frac{2}{N}}\sin\left(\frac{(n+1)(j+1)\pi}{N}\right), j,n=0,1,...,N-2 $$
$$S_{N}^{II}=s_{n}^{II}(j)=\sqrt{\frac{2}{N}}\epsilon_{n+1}\sin\left(\frac{(n+1)(j+\frac{1}{2})\pi}{N}\right), j,n=0,1,...,N-1$$
$$S_{N}^{III}=s_{n}^{III}(j)=\sqrt{\frac{2}{N}}\epsilon_{j+1}\sin\left(\frac{(n+\frac{1}{2})(j+1)\pi}{N}\right), j,n=0,1,...,N-1$$
$$S_{N}^{IV}=s_{n}^{IV}(j)=\sqrt{\frac{2}{N}}\sin\left(\frac{(n+\frac{1}{2})(j+\frac{1}{2}\pi)}{N}\right), j,n=0,1,...,N-1$$

where $\epsilon_0=\epsilon_N=\frac{1}{\sqrt{2}}$, $\epsilon_j=1$ for $j\in{1,2,...,N-1}$ and $N\ge 2$ is an integer.

**Lemma 1.** Let $N=2^m\ge 4$ for $m\in \mathbb{Z}^+$, then the matrices $S_{N-1}^I,S_N^{II},S_N^{III},S_N^{IV}$ can be factorted in the form

$$S_{N-1}^I=P_{N-1}^T\begin{bmatrix}
        S^{III}_{\frac{N}{2}} & 0\\\
        0 & S^{I}_{\frac{N}{2}-1}
        \end{bmatrix}H_{N-1}$$

$$$S_{N}^{II}=P_{N}^T\begin{bmatrix}
        S^{IV}_{\frac{N}{2}} & 0\\\
        0 & S^{II}_{\frac{N}{2}}
    \end{bmatrix}H_{N}$$

$$S_N^{III}=[S_N^{II}]^T=H_N^T\begin{bmatrix}
        S^{IV}_{\frac{N}{2}} & 0\\\
        0 & S^{III}_{\frac{N}{2}}
    \end{bmatrix}P_N$$

$$S_N^{IV}=P_N^TV_N\begin{bmatrix}
        S^{II}_{\frac{N}{2}} & 0\\\
        0 & S^{III}_{\frac{N}{2}}
    \end{bmatrix}Q_N$$

the proof and the definition of factorted matrices of **Lemma 1** can refer to `Sirani M. Perera and Vadim Olshevsky. Fast and stable algorithms for discrete sine transformations having orthogo-
nal factors. Interdisciplinary Topics in Applied Mathematics, Modeling and Computational Science, pages 347–354,
2015.`

**Lemma 2.** Let $N=2^m\ge 4$ for $m\in \mathbb{Z}^+$, then the matrices $S_{N-1}^I,S_N^{II},S_N^{III},S_N^{IV}$ can be factorted in the form

$$S_{N-1}^I=P_{N-1}^T\begin{bmatrix}
        \bar{B}_{\frac{N}{2}} & 0\\\
        0 & I_{\frac{N}{2}-1}
    \end{bmatrix}\begin{bmatrix}
        S_{\frac{N}{2}-1}^I & & \\\
        &  \sqrt{\frac{2}{N}} &\\\
        & &S_{\frac{N}{2}-1}^I  \\\
    \end{bmatrix}
    \begin{bmatrix}
        \bar{W}_{\frac{N}{2}} & 0\\\
        0 & I_{\frac{N}{2}-1}
    \end{bmatrix}H_{N-1}$$

$$S_{N}^{II}=\bar{P}_{N}^T\begin{bmatrix}
        I_{\frac{N}{2}} & 0\\\
        0 & B_{\frac{N}{2}}
    \end{bmatrix}\begin{bmatrix}
        S^{II}_{\frac{N}{2}} & 0\\\
        0 & S^{II}_{\frac{N}{2}}
    \end{bmatrix}\begin{bmatrix}
        I_{\frac{N}{2}} & 0\\\
        0 & W_{\frac{N}{2}}
    \end{bmatrix}\bar{H}_{N}$$

$$S_N^{III}=[S_N^{III}]^T=H_N^T\begin{bmatrix}
        W_{\frac{N}{2}} & 0\\\
        0 & I_{\frac{N}{2}}
    \end{bmatrix}\begin{bmatrix}
        S^{III}_{\frac{N}{2}} & 0\\\
        0 & S^{III}_{\frac{N}{2}}
    \end{bmatrix}\begin{bmatrix}
        B_{\frac{N}{2}}^T & 0\\\
        0 & I_{\frac{N}{2}}
    \end{bmatrix}P_N$$
    
$$S_N^{IV}=P_N^TV_N\begin{bmatrix}
        S^{II}_{\frac{N}{2}} & 0\\\
        0 & S^{II}_{\frac{N}{2}}
    \end{bmatrix}\bar{Q}_N$$

the proof and the definition of factorted matrices of **Lemma 2** can refer to `Sirani M Perera and Levi E Lingsch. Sparse matrix based low-complexity, recursive, and radix-2 algorithms for
discrete sine transforms. IEEE Access, 9:141181–141198, October 2021.`

**Remark 1.** The DST-I and IV is its own inverse, the inverse of DST-II is DST-III and the inverse of DST-III is DST-II.

## Run the code
The DST I-IV code of **Lemma 1** are `dst1.m`, `dst2.m`, `dst3.m`, `dst4.m` and `sdst1.m`, `sdst2.m`, `sdst3.m` (missing `sdst4.m` in this repo, feel free to complete it if interested) for **Lemma 2**. The corresponding factorized matrices are also in the `lib` folder.

**Remark 2.** Note that one should divide the results by the coefficient $\sqrt{2}$ to get the correct answers (see `dst1_compare_dst.m` under the `test` folder).
