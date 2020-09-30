// Alunos
// 
// Bruno Fernandes da Silva Leite CB3001571
// Sandyara Beatriz Doro Peres CB3001512

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novoProduto")
public class NovoProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Cadastrando novo Produto!!");

        String nome = req.getParameter("nome");
        String descricao = req.getParameter("descricao");
        String unidadeCompra = req.getParameter("unidadeCompra");
        String qtdPrevistoMes = req.getParameter("qtdPrevistoMes");
        String precoMaxComprado = req.getParameter("precoMaxComprado");

        Produto produto = new Produto();
        produto.setNome(nome);
        produto.setDescricao(descricao);
        produto.setUnidadeCompra(Integer.parseInt(unidadeCompra));
        produto.setQtdPrevistoMes(Double.parseDouble(qtdPrevistoMes));
        produto.setPrecoMaxComprado(Double.parseDouble(precoMaxComprado));
        DB banco = new DB();
        banco.adicionaProduto(produto);

        req.setAttribute("nome_produto", produto.getNome());
        resp.sendRedirect("listaProdutos");

    }

}


