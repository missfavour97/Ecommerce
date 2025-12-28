import Box from '@mui/material/Box';
import Typography from '@mui/material/Typography';
import Link from '@mui/material/Link';
import GitHubIcon from '@mui/icons-material/GitHub';

function Footer() {
  return (
    <Box
      component='footer'
      sx={{
        mt: 6,
        py: 2,
        textAlign: 'center',
        borderTop: '1px solid',
        borderColor: 'divider',
        backgroundColor: 'background.paper',
      }}>
      <Typography variant='body2' color='text.secondary'>
        ©️ {new Date().getFullYear()} by <strong>Favour Okwudili</strong>{' '}
        <Link
          href='https://github.com/missfavour97'
          target='_blank'
          rel='noopener'
          sx={{ ml: 0.5, verticalAlign: 'middle' }}>
          <GitHubIcon fontSize='small' />
        </Link>
        . All rights reserved.
      </Typography>
    </Box>
  );
}

export default Footer;